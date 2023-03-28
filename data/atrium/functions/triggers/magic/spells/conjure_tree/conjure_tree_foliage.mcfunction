# Block picker for different types
execute if entity @s[tag=atrium_oak_tree] run setblock ~ ~ ~ minecraft:oak_leaves
execute if entity @s[tag=atrium_mangrove_tree] run setblock ~ ~ ~ minecraft:mangrove_leaves
execute if entity @s[tag=atrium_spruce_tree] run setblock ~ ~ ~ minecraft:spruce_leaves
execute if entity @s[tag=atrium_mushroom_tree] run setblock ~ ~ ~ minecraft:red_mushroom_block[down=true,east=true,north=true,south=true,up=true,west=true]
execute if entity @s[tag=atrium_crimson_tree] run setblock ~ ~ ~ minecraft:nether_wart_block
execute if entity @s[tag=atrium_warped_tree] run setblock ~ ~ ~ minecraft:warped_wart_block
#
# Conjured Block marker
summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_entity","atrium_conjured_block_2m"]}