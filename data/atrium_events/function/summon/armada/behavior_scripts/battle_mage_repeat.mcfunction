# Repeat every tick.
execute if entity @a[tag=event] run schedule function atrium_events:summon/armada/behavior_scripts/battle_mage_repeat 1t
#
# Evoker notes: Started summoning vexes = 99. Vexes appear = 80ish. Fangs appear = 39.
#
# If the battle mage just summoned vexes AND no players are within 7 blocks, launch spell rockets down at their target.
execute as @e[type=minecraft:evoker,tag=atrium_armada_battle_mage] at @s if data entity @s {SpellTicks:81} unless entity @a[distance=..7,gamemode=!spectator] run function atrium_events:summon/armada/behavior_scripts/spells/harming_rocket_volley
# If there is a player within 7 blocks AND a raider within 10-30 blocks, teleport out of there.
execute as @e[type=minecraft:evoker,tag=atrium_armada_battle_mage] at @s if data entity @s {SpellTicks:81} if entity @a[distance=..7,gamemode=!spectator] if entity @n[type=#minecraft:raiders,distance=10..30,type=!evoker] run function atrium_events:summon/armada/behavior_scripts/spells/ripcord
# If there is a player within 7 blocks and there isn't anyone to Ripcord to within 25 blocks, blast 'em.
execute as @e[type=minecraft:evoker,tag=atrium_armada_battle_mage] at @s if data entity @s {SpellTicks:81} if entity @a[distance=..7,gamemode=!spectator] unless entity @n[type=#minecraft:raiders,distance=..25,type=!evoker] run function atrium_events:summon/armada/behavior_scripts/spells/flux_detonation
#
# At every battle mage who just summoned vexes: 75% chance (per vex) to make them silent and invisible then kill them.
execute as @e[type=minecraft:evoker,tag=atrium_armada_battle_mage] at @s if data entity @s {SpellTicks:81} as @e[distance=..10,type=minecraft:vex,predicate=atrium:percentage_chances/0.75_p] run function atrium_events:summon/armada/behavior_scripts/looters/remove_vexes
# If any Vexes survive the Elimination Round, give them stronger weapons.
execute as @e[type=minecraft:evoker,tag=atrium_armada_battle_mage] at @s if data entity @s {SpellTicks:81} as @e[distance=..10,type=minecraft:vex] run item replace entity @s weapon with minecraft:diamond_sword