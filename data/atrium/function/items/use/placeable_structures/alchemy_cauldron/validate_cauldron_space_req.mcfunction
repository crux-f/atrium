# Place center block
setblock ~ ~ ~ minecraft:water_cauldron[level=3] 
#
# Note: Using valid_ingredients score on the player who placed the circle to track successful validations.
#
# Check item frame locations to make sure they aren't occupied.
#
# NORTH
execute if block ~ ~ ~-2 minecraft:air run scoreboard players add @s valid_ingredients 1
# EAST
execute if block ~2 ~ ~ minecraft:air run scoreboard players add @s valid_ingredients 1
# SOUTH
execute if block ~ ~ ~2 minecraft:air run scoreboard players add @s valid_ingredients 1
# WEST
execute if block ~-2 ~ ~ minecraft:air run scoreboard players add @s valid_ingredients 1
#
# Now check to make sure the blocks that would be supporting the item frames are solid blocks.
#
# UNDER NORTH
execute unless block ~ ~-1 ~-2 #atrium:non_solid_blocks run scoreboard players add @s valid_ingredients 1
# UNDER EAST
execute unless block ~2 ~-1 ~ #atrium:non_solid_blocks run scoreboard players add @s valid_ingredients 1
# UNDER SOUTH
execute unless block ~ ~-1 ~2 #atrium:non_solid_blocks run scoreboard players add @s valid_ingredients 1
# UNDER WEST
execute unless block ~-2 ~-1 ~ #atrium:non_solid_blocks run scoreboard players add @s valid_ingredients 1
#
# Check to make sure button area is open.
# Center
execute if block ~ ~ ~-4 minecraft:air run scoreboard players add @s valid_ingredients 1
execute if block ~ ~1 ~-4 minecraft:air run scoreboard players add @s valid_ingredients 1
execute if block ~ ~2 ~-4 minecraft:air run scoreboard players add @s valid_ingredients 1
execute if block ~ ~ ~-5 minecraft:air run scoreboard players add @s valid_ingredients 1
execute if block ~ ~1 ~-5 minecraft:air run scoreboard players add @s valid_ingredients 1
execute if block ~ ~2 ~-5 minecraft:air run scoreboard players add @s valid_ingredients 1
execute if block ~ ~ ~-6 minecraft:air run scoreboard players add @s valid_ingredients 1
execute if block ~ ~1 ~-6 minecraft:air run scoreboard players add @s valid_ingredients 1
# West side
execute if block ~-1 ~ ~-4 minecraft:air run scoreboard players add @s valid_ingredients 1
execute if block ~-1 ~1 ~-4 minecraft:air run scoreboard players add @s valid_ingredients 1
execute if block ~-1 ~ ~-5 minecraft:air run scoreboard players add @s valid_ingredients 1
execute if block ~-1 ~1 ~-5 minecraft:air run scoreboard players add @s valid_ingredients 1
execute if block ~-1 ~ ~-6 minecraft:air run scoreboard players add @s valid_ingredients 1
#
execute if block ~-2 ~ ~-5 minecraft:air run scoreboard players add @s valid_ingredients 1
# East side
execute if block ~1 ~ ~-4 minecraft:air run scoreboard players add @s valid_ingredients 1
execute if block ~1 ~1 ~-4 minecraft:air run scoreboard players add @s valid_ingredients 1
execute if block ~1 ~ ~-5 minecraft:air run scoreboard players add @s valid_ingredients 1
execute if block ~1 ~1 ~-5 minecraft:air run scoreboard players add @s valid_ingredients 1
execute if block ~1 ~ ~-6 minecraft:air run scoreboard players add @s valid_ingredients 1
#
execute if block ~2 ~ ~-5 minecraft:air run scoreboard players add @s valid_ingredients 1
#
# One final check is made to make sure the player isn't placing custom crafting stations too close together.
execute if entity @e[tag=atrium_crafting_station,distance=..15] run scoreboard players set @s valid_ingredients -1
execute if entity @e[tag=atrium_crafting_slot,distance=..15] run scoreboard players set @s valid_ingredients -1
# TOTAL = 28
# If player has total or higher, the area is valid for the structure to be placed.
execute if entity @s[scores={valid_ingredients=28..}] positioned ~ ~ ~ run function atrium:items/use/placeable_structures/alchemy_cauldron/build_alchemy_cauldron_1
#
# If not, break the center block, give them back the item, and tell them the appropriate info message.
execute if entity @s[scores={valid_ingredients=..27}] run setblock ~ ~ ~ minecraft:air
execute if entity @s[scores={valid_ingredients=..27}] run function atrium:items/give/placeable_structures/alchemy_cauldron_placer
# Info message: Not enough space
execute as @s[scores={valid_ingredients=0..27}] run function atrium:items/use/placeable_structures/err_not_enough_space
# Info message: Too close to another station
execute as @s[scores={valid_ingredients=-1}] run function atrium:items/use/placeable_structures/err_stations_too_close
#
# Reset score
scoreboard players set @s valid_ingredients 0
