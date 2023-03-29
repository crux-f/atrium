# Block picker for different types
execute if entity @s[tag=atrium_oak_tree] run setblock ~ ~ ~ minecraft:oak_log[axis=y]
execute if entity @s[tag=atrium_mangrove_tree] run setblock ~ ~ ~ minecraft:mangrove_log[axis=y]
execute if entity @s[tag=atrium_spruce_tree] run setblock ~ ~ ~ minecraft:spruce_log[axis=y]
execute if entity @s[tag=atrium_mushroom_tree] run setblock ~ ~ ~ minecraft:mushroom_stem[down=false,east=true,north=true,south=true,up=false,west=true]
execute if entity @s[tag=atrium_crimson_tree] run setblock ~ ~ ~ minecraft:crimson_stem[axis=y]
execute if entity @s[tag=atrium_warped_tree] run setblock ~ ~ ~ minecraft:warped_stem[axis=y]
#
# Conjured Block marker
summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_entity","atrium_temporary_block","atrium_conjured_tree_block"]}
#
# Set timer
scoreboard players set @e[tag=atrium_temporary_block,distance=..1] charge -2400