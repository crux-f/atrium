# If the player was not sneaking, place a magma block and a soul sand block
execute if entity @s[tag=atrium_up_column] run setblock ~ ~ ~ minecraft:magma_block
execute if entity @s[tag=atrium_up_column] run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_entity","atrium_temporary_block","atrium_undercurrent_spell"]}
execute if entity @s[tag=atrium_up_column] run setblock ~ ~1 ~ minecraft:soul_sand
execute if entity @s[tag=atrium_up_column] run summon minecraft:marker ~ ~1 ~ {Tags:["atrium_special","atrium_temporary_entity","atrium_temporary_block","atrium_undercurrent_spell"]}
# If the player was not sneaking, place a magma block and a soul sand block
execute if entity @s[tag=atrium_down_column] run setblock ~ ~ ~ minecraft:magma_block
execute if entity @s[tag=atrium_down_column] run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_entity","atrium_temporary_block","atrium_undercurrent_spell"]}
#
# Kill original anchor
kill @s
#
#
# Set timeout (10 seconds)
execute as @e[tag=atrium_undercurrent_spell,distance=..3] run scoreboard players set @s charge -200