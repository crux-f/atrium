# Casting Particles
execute at @s anchored eyes run particle minecraft:white_ash ^ ^ ^1.5 0.03 0.03 0.03 0.5 150
# Casting SFX
execute at @s run playsound minecraft:block.ender_chest.open master @a[distance=..30] ~ ~ ~ 0.3 0.85 0.1
# Tag caster to exclude them from being targeted
tag @s add atrium_parallax_immune
# Tag a valid target
execute at @s anchored eyes positioned ^ ^ ^3 run tag @e[distance=..3,limit=1,sort=random,tag=!atrium_parallax_immune,type=!#atrium:spell_immune] add atrium_parallax_target
# If there was no valid target, run the particles + sfx for failure.
execute at @s anchored eyes positioned ^ ^ ^3 unless entity @e[tag=!atrium_parallax_immune,distance=..3,type=!#atrium:spell_immune] run particle minecraft:smoke ^ ^ ^1.5 0.03 0.03 0.03 0.5 150
execute at @s anchored eyes positioned ^ ^ ^3 unless entity @e[tag=!atrium_parallax_immune,distance=..3,type=!#atrium:spell_immune] run playsound minecraft:block.redstone_torch.burnout master @a[distance=..30] ~ ~ ~ 0.3 1 0.1
#
# Remove caster exclusion tag
tag @s remove atrium_parallax_immune
# Summon return point
# execute as @e[tag=atrium_parallax_target] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"smoke",CustomNameVisible:0b,Radius:0f,Duration:120,Tags:["atrium_parallax_return"],Potion:"minecraft:empty",CustomName:{text:"Return Point"}}
# Target particles
execute at @e[tag=atrium_parallax_target] run particle minecraft:warped_spore ~ ~ ~ 0.5 0.5 0.5 1 150
# Give target slow falling to keep them safe in the demiplane
# I = 6 seconds, II = 8 seconds, III = 10 seconds | Adding +1 second for safety
execute if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:1b}}}}} run effect give @e[tag=atrium_parallax_target] minecraft:slow_falling 7 0 true
execute if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}}} run effect give @e[tag=atrium_parallax_target] minecraft:slow_falling 9 0 true
execute if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}}} run effect give @e[tag=atrium_parallax_target] minecraft:slow_falling 11 0 true
#
# If the target isn't a player, set it to not despawn
data merge entity @e[tag=atrium_parallax_target,type=!minecraft:player,limit=1] {PersistenceRequired:1b}
#
# Save return dimension
# Between Worlds = -1
execute if entity @s[predicate=atrium:in_between_worlds] run scoreboard players set @e[tag=atrium_parallax_target,distance=..5] atrium_parallax_dim -1
# Overworld = 0
execute if entity @s[predicate=atrium:in_overworld] run scoreboard players set @e[tag=atrium_parallax_target,distance=..5] atrium_parallax_dim 0
# Nether = 1
execute if entity @s[predicate=atrium:in_the_nether] run scoreboard players set @e[tag=atrium_parallax_target,distance=..5] atrium_parallax_dim 1
# The End = 2
execute if entity @s[predicate=atrium:in_the_end] run scoreboard players set @e[tag=atrium_parallax_target,distance=..5] atrium_parallax_dim 2
# Meridian = 3
execute if entity @s[predicate=atrium:in_the_meridian] run scoreboard players set @e[tag=atrium_parallax_target,distance=..5] atrium_parallax_dim 3
# Depths = 4
execute if entity @s[predicate=atrium:in_the_depths] run scoreboard players set @e[tag=atrium_parallax_target,distance=..5] atrium_parallax_dim 4
# Abyss = 5
execute if entity @s[predicate=atrium:in_the_abyss] run scoreboard players set @e[tag=atrium_parallax_target,distance=..5] atrium_parallax_dim 5
#
# Save return coordinates
execute store result score @e[tag=atrium_parallax_target,distance=..5] atrium_parallax_x run data get entity @e[tag=atrium_parallax_target,distance=..5,limit=1] Pos[0]
execute store result score @e[tag=atrium_parallax_target,distance=..5] atrium_parallax_y run data get entity @e[tag=atrium_parallax_target,distance=..5,limit=1] Pos[1]
execute store result score @e[tag=atrium_parallax_target,distance=..5] atrium_parallax_z run data get entity @e[tag=atrium_parallax_target,distance=..5,limit=1] Pos[2]
#
# Set the duration of the spell depending on staff level
# I = 6 seconds, II = 8 seconds, III = 10 seconds
execute if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:1b}}}}} run scoreboard players set @e[tag=atrium_parallax_target,distance=..5] atrium_parallax_timer 120
execute if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}}} run scoreboard players set @e[tag=atrium_parallax_target,distance=..5] atrium_parallax_timer 160
execute if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}}} run scoreboard players set @e[tag=atrium_parallax_target,distance=..5] atrium_parallax_timer 200
#
# If the target isn't a player, teleport them to y 2000
execute as @e[tag=atrium_parallax_target,type=!minecraft:player] at @s run tp @s ~ 2000 ~
# If the target is a player, teleport them into Between Worlds
execute as @e[tag=atrium_parallax_target,type=minecraft:player] at @s in atrium:between_worlds run tp @s 9999 999 9999
#
# Run the repeat script
function atrium:triggers/magic/spells/parallax_repeat
#
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete

