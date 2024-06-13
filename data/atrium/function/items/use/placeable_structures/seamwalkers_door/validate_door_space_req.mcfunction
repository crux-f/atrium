# Place center block
setblock ~ ~ ~ minecraft:stone_pressure_plate replace
#
# Note: Using valid_ingredients score on the player who placed the circle to track successful validations.
#
# Check locations to make sure they aren't occupied.
#
execute if block ~ ~1 ~ minecraft:air run scoreboard players add @s valid_ingredients 1
execute if block ~ ~2 ~ minecraft:air run scoreboard players add @s valid_ingredients 1
execute unless block ~ ~-1 ~ #atrium:non_solid_blocks run scoreboard players add @s valid_ingredients 1
# Make sure the command block isnt going to grief containers or hang in mid air
execute unless block ~ ~-2 ~ minecraft:chest run scoreboard players add @s valid_ingredients 1
execute unless block ~ ~-2 ~ minecraft:barrel run scoreboard players add @s valid_ingredients 1
execute unless block ~ ~-2 ~ #atrium:non_solid_blocks run scoreboard players add @s valid_ingredients 1
#
# One final check is made to make sure the player isn't placing custom crafting stations too close together.
execute if entity @e[tag=atrium_crafting_station,distance=..8] run scoreboard players set @s valid_ingredients -1
execute if entity @e[tag=atrium_crafting_slot,distance=..8] run scoreboard players set @s valid_ingredients -1
# TOTAL = 6
# If player has total or higher, the area is valid for the structure to be placed.
execute if entity @s[scores={valid_ingredients=6..}] positioned ~ ~ ~ run function atrium:items/use/placeable_structures/seamwalkers_door/build_seamwalkers_door
#
# If not, break the center block, give them back the item, and tell them the appropriate info message.
execute if entity @s[scores={valid_ingredients=..5}] run setblock ~ ~ ~ minecraft:air
execute if entity @s[scores={valid_ingredients=..5}] run function atrium:items/give/placeable_structures/seamwalkers_door_placer
# Info message: Not enough space
execute as @s[scores={valid_ingredients=0..5}] run function atrium:items/use/placeable_structures/err_not_enough_space
# Info message: Too close to another station
execute as @s[scores={valid_ingredients=-1}] run tellraw @s {"text":"(This is too close to another structure. Make sure you are at least 8 blocks from another Seamwalker's Door, or any formula crafting station.)","italic":true,"color":"red"}
#
# Reset score
scoreboard players set @s valid_ingredients 0
