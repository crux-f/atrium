# A blizzard swirls around the player, giving nearby entities Slowness I (unless they are completely immune to freezing) and causing them to start Freezing.
#
# Particles!
execute at @a[tag=blizzard_spell_center] run particle minecraft:snowflake ~ ~1 ~ 10 10 10 0.1 150 normal
execute at @a[tag=blizzard_spell_center] run particle minecraft:snowflake ~ ~1 ~ 10 10 10 0.2 50 force
# SFX!
execute at @a[tag=blizzard_spell_center] run playsound minecraft:ambient.soul_sand_valley.mood master @a[distance=..30] ~ ~ ~ 0.3 0.5 0.05
#
#
# Freeze mobs in the blizzard. Actually uses freezing.
execute at @a[tag=blizzard_spell_center] as @e[distance=..10,type=!#freeze_immune_entity_types,type=!player] run function atrium:magic/magicitems/spells/blizzard_spell/blizzard_freeze_mob
#
# Freeze non-caster players in the blizzard. 
# Because of /data limitations, I'm using Wither to freeze players (Players wearing any piece of leather armor are immune to freezing).
# Leather armor makes players immune to the freezing damage, but not the slowness. Because I said so.
execute at @a[tag=blizzard_spell_center] as @a[distance=..10,tag=!blizzard_spell_center] run effect give @s minecraft:slowness 2 0 false
execute at @a[tag=blizzard_spell_center] as @a[distance=..10,predicate=!atrium:inv_check/armor_leather_any,tag=!blizzard_spell_center] run effect give @s minecraft:wither 2 0 true
#
# Add 1 to the counter every tick.
execute as @a[tag=blizzard_spell_center] run scoreboard players add @s blizzard_spell 1
# Spell lasts 45 seconds (900 ticks)
tag @a[scores={blizzard_spell=900..}] remove blizzard_spell_center
#
# Reset scores when the spell ends.
execute unless entity @a[tag=blizzard_spell_center] run scoreboard players set @a blizzard_spell 0
#
# Run again every tick until the spell ends.
execute if entity @a[tag=blizzard_spell_center] run schedule function atrium:magic/magicitems/spells/blizzard_repeat 1t
