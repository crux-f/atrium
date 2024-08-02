# Tag the caster to exclude them from the effect
tag @s add atrium_moment_caster
#
# Particles
particle minecraft:enchant ~ ~1.25 ~ 0.25 0 0.25 2 75
particle minecraft:end_rod ~ ~1.25 ~ 0.5 0.25 0.5 0 25
# SFX
playsound minecraft:block.end_portal.spawn player @a[distance=..30] ~ ~ ~ 0.5 1.5 0.25
#
# Stop all non-player entities in their tracks
execute as @e[type=!minecraft:player,distance=..30] run data remove entity @s Motion
#
# Disable all non-player entities' AI for 5 seconds. (Note: re-enabled by condition manager)
execute as @e[type=!minecraft:player,distance=..30] run tag @s add atrium_condition
execute as @e[type=!minecraft:player,distance=..30] run tag @s add atrium_ai_disabled
execute as @e[type=!minecraft:player,distance=..30] run data modify entity @s NoAI set value true
# Set timer
execute as @e[type=!minecraft:player,distance=..30] run scoreboard players set @s atrium_condition_timer -100
#
# Particles at all entities other than the caster
execute at @e[tag=!atrium_moment_caster,distance=..30] run particle explosion ~ ~ ~ 0.5 0.5 0.5 0 1 force
#
# Disrupt the movement of all non-caster animate entities for 16 seconds.
# Starting with Slowness X and decreasing by 2 levels every 3 seconds until it expires.
# And heck, lets do the same with Mining Fatigue just to be sure.
#
execute as @e[tag=!atrium_moment_caster,distance=..30] run effect give @s slowness 4 9 true
execute as @e[tag=!atrium_moment_caster,distance=..30] run effect give @s mining_fatigue 4 9 true
#
execute as @e[tag=!atrium_moment_caster,distance=..30] run effect give @s slowness 7 7 true
execute as @e[tag=!atrium_moment_caster,distance=..30] run effect give @s mining_fatigue 7 7 true
#
execute as @e[tag=!atrium_moment_caster,distance=..30] run effect give @s slowness 10 5 true
execute as @e[tag=!atrium_moment_caster,distance=..30] run effect give @s mining_fatigue 10 5 true
#
execute as @e[tag=!atrium_moment_caster,distance=..30] run effect give @s slowness 13 3 true
execute as @e[tag=!atrium_moment_caster,distance=..30] run effect give @s mining_fatigue 13 3 true
#
execute as @e[tag=!atrium_moment_caster,distance=..30] run effect give @s slowness 16 1 true
execute as @e[tag=!atrium_moment_caster,distance=..30] run effect give @s mining_fatigue 16 1 true
#
# Remove caster tag
tag @s remove atrium_moment_caster
#
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete