# runs every tick while the flare exists.
execute if entity @e[tag=atrium_flare_spell] as @e[tag=atrium_flare_spell] if data entity @s {data:{Level:1}} run schedule function atrium:triggers/magic/spells/flare_repeat 160t
execute if entity @e[tag=atrium_flare_spell] as @e[tag=atrium_flare_spell] if data entity @s {data:{Level:2}} run schedule function atrium:triggers/magic/spells/flare_repeat 400t
#
# Slowly fade the light level at a rate determined by the level at which the spell was cast
execute at @e[tag=atrium_flare_spell] if block ~ ~ ~ minecraft:light[level=2] run setblock ~ ~ ~ minecraft:light[level=1]
execute at @e[tag=atrium_flare_spell] if block ~ ~ ~ minecraft:light[level=3] run setblock ~ ~ ~ minecraft:light[level=2]
execute at @e[tag=atrium_flare_spell] if block ~ ~ ~ minecraft:light[level=4] run setblock ~ ~ ~ minecraft:light[level=3]
execute at @e[tag=atrium_flare_spell] if block ~ ~ ~ minecraft:light[level=5] run setblock ~ ~ ~ minecraft:light[level=4]
execute at @e[tag=atrium_flare_spell] if block ~ ~ ~ minecraft:light[level=6] run setblock ~ ~ ~ minecraft:light[level=5]
execute at @e[tag=atrium_flare_spell] if block ~ ~ ~ minecraft:light[level=7] run setblock ~ ~ ~ minecraft:light[level=6]
execute at @e[tag=atrium_flare_spell] if block ~ ~ ~ minecraft:light[level=8] run setblock ~ ~ ~ minecraft:light[level=7]
execute at @e[tag=atrium_flare_spell] if block ~ ~ ~ minecraft:light[level=9] run setblock ~ ~ ~ minecraft:light[level=8]
execute at @e[tag=atrium_flare_spell] if block ~ ~ ~ minecraft:light[level=10] run setblock ~ ~ ~ minecraft:light[level=9]
execute at @e[tag=atrium_flare_spell] if block ~ ~ ~ minecraft:light[level=11] run setblock ~ ~ ~ minecraft:light[level=10]
execute at @e[tag=atrium_flare_spell] if block ~ ~ ~ minecraft:light[level=12] run setblock ~ ~ ~ minecraft:light[level=11]
execute at @e[tag=atrium_flare_spell] if block ~ ~ ~ minecraft:light[level=13] run setblock ~ ~ ~ minecraft:light[level=12]
execute at @e[tag=atrium_flare_spell] if block ~ ~ ~ minecraft:light[level=14] run setblock ~ ~ ~ minecraft:light[level=13]
execute at @e[tag=atrium_flare_spell] if block ~ ~ ~ minecraft:light[level=15] run setblock ~ ~ ~ minecraft:light[level=14]