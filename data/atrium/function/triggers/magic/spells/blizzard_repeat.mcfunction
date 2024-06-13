# A blizzard swirls around the player, giving nearby entities Slowness I (unless they are completely immune to freezing) and causing them to start Freezing.
#
# Particles!
execute at @a[tag=atrium_blizzard_caster] run particle minecraft:snowflake ~ ~1 ~ 10 10 10 0.1 150 normal
execute at @a[tag=atrium_blizzard_caster] run particle minecraft:snowflake ~ ~1 ~ 10 10 10 0.2 50 force
# SFX!
execute at @a[tag=atrium_blizzard_caster] if predicate atrium:percentage_chances/0.10_p run playsound minecraft:ambient.soul_sand_valley.mood master @a[distance=..30] ~ ~ ~ 0.3 0.5 0.05
#
# Freeze every entity apart from the caster.
execute at @a[tag=atrium_blizzard_caster] as @e[distance=..10,type=!#freeze_immune_entity_types,tag=!atrium_blizzard_caster] run function atrium:triggers/magic/spells/blizzard_freeze_entity
#
# Add 1 to the counter every tick.
execute as @a[tag=atrium_blizzard_caster] run scoreboard players add @s atrium_blizzard_spell 1
# Spell lasts 45 seconds (900 ticks)
tag @a[scores={atrium_blizzard_spell=900..}] remove atrium_blizzard_caster
#
# Reset scores when the spell ends.
execute unless entity @a[tag=atrium_blizzard_caster] run scoreboard players reset @a atrium_blizzard_spell
#
# Run again every tick until the spell ends.
execute if entity @a[tag=atrium_blizzard_caster] run schedule function atrium:triggers/magic/spells/blizzard_repeat 1t
