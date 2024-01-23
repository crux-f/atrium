# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. 
# If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. 
# Regardless of success or failure, reset the crafting score afterwards.
# Note: alchemy_base_item handles the first item - this script will handle any remaining item checks.
#
# Check WEST for Potion of Slowness IV (0:20)
execute positioned ~-2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_slowness"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_slowness"}}}] run scoreboard players add @s valid_ingredients 1
# Check EAST for Potion of Slowness IV (0:20)
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_slowness"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_slowness"}}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH for Lightning Rod
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lightning_rod",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lightning_rod",Count:1b}}] run scoreboard players add @s valid_ingredients 1
#
# Check if it's storming
execute if predicate atrium:weather/is_storming run scoreboard players add @s valid_ingredients 1
# If it isn't storming, remind the player.
execute unless predicate atrium:weather/is_storming run tellraw @p[distance=..5,gamemode=!spectator] {"text":"(This ritual requires a storm.)","italic":true,"color":"gray"}
#
# If the ritual succeeds, do a theatrical lightning strike (above the area so it doesn't hurt anyone)
execute if entity @s[scores={valid_ingredients=4..}] at @s run summon lightning_bolt ~ ~10 ~ 
execute if entity @s[scores={valid_ingredients=4..}] at @s run summon item ~ ~1 ~ {Motion:[0.0,0.02,0.0],NoGravity:1b,Glowing:1b,Item:{id:"minecraft:white_stained_glass",Count:1b,tag:{display:{Name:'{"text":"Cyclone Cube","color":"yellow","italic":false}',Lore:['{"text":"Muted howling emits"}','{"text":"from the intense winds"}','{"text":"trapped within."}']},HideFlags:1,atrium_cyclone_cube:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:1s}]}}}
execute if entity @s[scores={valid_ingredients=4..}] at @s run function atrium:formula_crafting/alchemy/alchemy_reset
execute if entity @s[scores={valid_ingredients=4..}] at @s positioned ~ ~ ~-2 run advancement grant @p[distance=..5,gamemode=!spectator] only atrium:magic/secret_ingredient
scoreboard players set @s valid_ingredients 0
