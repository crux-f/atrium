# Search mode
# - - - - -
# Triggered by lich_manager once each tick.
#
# 1% chance to drink a Potion of Harming (if needed).
execute if predicate atrium:percentage_chances/0.01_p unless data entity @s {Health:450f} run function atrium:structures/sanctum/behavior_scripts/drink_harming_potion
# 25% chance to drink a Potion of Fire Resistance (if needed).
execute if predicate atrium:percentage_chances/0.25_p unless predicate atrium:effects/if_fire_resistance_any run function atrium:structures/sanctum/behavior_scripts/drink_fire_res_potion
# 25% chance to charge up for an idle spell (Unless the Lich is already at 61 or higher)
execute if predicate atrium:percentage_chances/0.25_p unless score @s charge matches 61.. run function atrium:structures/sanctum/behavior_scripts/lich_spell_charge
# 1% chance to play their idle sound
execute if predicate atrium:percentage_chances/0.01_p run playsound minecraft:entity.stray.ambient hostile @a[distance=..15] ~ ~ ~ 1 0.25 0.1
#
# 25% chance to cast Natural Armor on itself (if needed and able)
execute if score @s charge matches 60.. if predicate atrium:percentage_chances/0.25_p unless predicate atrium:effects/amplifier/if_resistance_3 run function atrium:entities/mob_spells/natural_armor
#
# Lich is more likely to search outer towers
#
# 6% chance to teleport to another point within the Lich's lair (if able)
execute if score @s charge matches 60.. if predicate atrium:percentage_chances/0.06_p run function atrium:structures/sanctum/behavior_scripts/lich_roam_lair
# 15% chance to teleport to a point outside the lair (if able)
execute if score @s charge matches 60.. if predicate atrium:percentage_chances/0.15_p run function atrium:structures/sanctum/behavior_scripts/lich_roam
#
# The Lich has a flat 5% chance to summon minions anywhere in the Sanctum that doesn't already have them.
execute if score @s charge matches 60.. if predicate atrium:percentage_chances/0.05_p at @e[tag=atrium_sanctum_tp,limit=1,sort=arbitrary] unless entity @e[tag=atrium_sanctum_minion,distance=..25] run function atrium:entities/mob_spells/lich_summon
#
# If the Lich is standing on air and the block under that is also air, there is a 50% chance they will disobey the laws of physics.
execute if block ~ ~-1 ~ minecraft:air if block ~ ~-2 ~ minecraft:air if predicate atrium:percentage_chances/0.50_p unless data entity @s NoGravity run function atrium:entities/mob_spells/lich_hover
#
# If the Boss Bar is visible from a previous combat, keep updating it.
execute store result bossbar atrium:lich value run data get entity @e[tag=atrium_lich,limit=1] Health 1
# Each tick that the Lich is searching (but not in combat), add 1 to its atrium_searching score. Once it has been searching for 3 minutes (3600 ticks),
# it will return to idle mode.
scoreboard players add @s atrium_searching 1
execute if score @s atrium_searching matches 3600.. run tag @s remove atrium_alerted
execute if score @s atrium_searching matches 3600.. run scoreboard players reset @s atrium_searching
