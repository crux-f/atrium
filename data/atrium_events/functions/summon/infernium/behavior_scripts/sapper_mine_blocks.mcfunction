# Breaks blocks once every 3 seconds if they're adjacent to them.
execute at @e[tag=atrium_infernium_sapper] positioned ~1 ~ ~ if block ~ ~ ~ #atrium:efficient_building_blocks run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=atrium_infernium_sapper] positioned ~1 ~1 ~ if block ~ ~ ~ #atrium:efficient_building_blocks run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=atrium_infernium_sapper] positioned ~-1 ~ ~ if block ~ ~ ~ #atrium:efficient_building_blocks run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=atrium_infernium_sapper] positioned ~-1 ~1 ~ if block ~ ~ ~ #atrium:efficient_building_blocks run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=atrium_infernium_sapper] positioned ~ ~ ~1 if block ~ ~ ~ #atrium:efficient_building_blocks run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=atrium_infernium_sapper] positioned ~ ~1 ~1 if block ~ ~ ~ #atrium:efficient_building_blocks run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=atrium_infernium_sapper] positioned ~ ~ ~-1 if block ~ ~ ~ #atrium:efficient_building_blocks run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=atrium_infernium_sapper] positioned ~ ~1 ~-1 if block ~ ~ ~ #atrium:efficient_building_blocks run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=atrium_infernium_sapper] positioned ~ ~2 ~ if block ~ ~ ~ #atrium:efficient_building_blocks run setblock ~ ~ ~ minecraft:air destroy
#
execute at @e[tag=atrium_infernium_sapper] run kill @e[type=item,distance=..2.5]
execute if entity @e[tag=atrium_infernium_sapper] run schedule function atrium_events:summon/infernium/behavior_scripts/sapper_mine_blocks 3s