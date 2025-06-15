# Tag caster to exclude them from being targeted
tag @s add atrium_turn_tide_immune
# Tag a valid target
execute at @s anchored eyes positioned ^ ^ ^3 run tag @e[distance=..3,limit=1,sort=random,tag=!atrium_turn_tide_immune,predicate=atrium:entity/is_in_water,type=#atrium:living_entities] add atrium_turn_tide_target
# If there was no valid target, run the particles + sfx for failure.
execute at @s anchored eyes positioned ^ ^ ^3 unless entity @e[tag=atrium_turn_tide_target,distance=..3] run particle minecraft:smoke ^ ^ ^1.5 0.03 0.03 0.03 0 50
execute at @s anchored eyes positioned ^ ^ ^3 unless entity @e[tag=atrium_turn_tide_target,distance=..3] run playsound minecraft:block.redstone_torch.burnout master @a[distance=..30] ~ ~ ~ 0.3 1 0.1
#
# Casting Particles
execute at @s anchored eyes positioned ^ ^ ^3 if entity @e[tag=atrium_turn_tide_target,distance=..3] run particle minecraft:bubble ^ ^ ^1.5 0.03 0.03 0.03 0.5 50
# Casting SFX
execute at @s anchored eyes positioned ^ ^ ^3 if entity @e[tag=atrium_turn_tide_target,distance=..3] run playsound minecraft:entity.dolphin.swim player @a[distance=..10] ~ ~ ~ 1 1 0.1
execute at @s anchored eyes positioned ^ ^ ^3 if entity @e[tag=atrium_turn_tide_target,distance=..3] run playsound minecraft:block.note_block.chime player @a[distance=..10] ~ ~ ~ 0.5 2 0.1
#
# Remove caster exclusion tag
tag @s remove atrium_turn_tide_immune
#
# Target particles
execute at @e[tag=atrium_turn_tide_target] run particle minecraft:underwater ~ ~1.25 ~ 0.35 0.5 0.35 0.1 250
execute at @e[tag=atrium_turn_tide_target] run particle minecraft:heart ~ ~1.25 ~ 0.35 0.5 0.35 0.1 1
#
# Give target healing
execute if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}}} run effect give @e[tag=atrium_turn_tide_target] minecraft:instant_health 1 1 false
execute if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}}} run effect give @e[tag=atrium_turn_tide_target] minecraft:instant_health 2 1 false
#
# If the target is Poisoned, cure the poison and use the poison cure particles
execute as @e[tag=atrium_turn_tide_target,predicate=atrium:effects/if_poison_any] at @s run particle entity_effect{color:[0.094,0.420,0.212,2.00]} ~ ~ ~ 0.25 0.75 0.25 1 30 normal
execute as @e[tag=atrium_turn_tide_target,predicate=atrium:effects/if_poison_any] run effect clear @s minecraft:poison
#
# Remove tag
execute as @e[tag=atrium_turn_tide_target] run tag @s remove atrium_turn_tide_target
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete

