# Repeat every tick.
schedule function atrium_events:summon/armada/behavior_scripts/scorcher_repeat 1t
#
# Tag fireworks the scorcher shoots
execute at @e[tag=atrium_armada_scorcher] as @e[type=minecraft:firework_rocket,tag=!atrium_scorcher_rocket] if data entity @s {ShotAtAngle:1b} run tag @s add atrium_scorcher_rocket
#
# Line of Fire
execute at @e[tag=atrium_scorcher_rocket] if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:fire