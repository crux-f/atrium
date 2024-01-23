# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. 
# If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. 
# Regardless of success or failure, reset the crafting score afterwards.
# Note: alchemy_base_item handles the first item - this script will handle any remaining item checks.
#
# Check SOUTH for Potion of Weakness (1:30)
execute positioned ~ ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:weakness"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:weakness"}}}] run scoreboard players add @s valid_ingredients 1
#
# Check NORTH EAST for Sculk
execute positioned ~2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:sculk",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:sculk",Count:1b}}] run scoreboard players add @s valid_ingredients 1
#
# Check NORTH WEST for Sculk Catalyst
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:sculk_catalyst",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:sculk_catalyst",Count:1b}}] run scoreboard players add @s valid_ingredients 1
#
# Check SOUTH EAST for Stone
execute positioned ~2 ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone",Count:1b}}] run scoreboard players add @s valid_ingredients 1
#
# Check SOUTH WEST for Sculk
execute positioned ~-2 ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:sculk",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:sculk",Count:1b}}] run scoreboard players add @s valid_ingredients 1
#
execute if entity @s[scores={valid_ingredients=5..}] at @s run summon item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:amethyst_shard",Count:1b,tag:{display:{Name:'{"text":"Dilution Matrix","italic":false}',Lore:['{"text":"This chaotic device mimics"}','{"text":"the conversion process found in"}','{"text":"Sculk to advance arcane"}','{"text":"achievement. It\'s probably fine!"}']},CustomModelData:333175,atrium_dilution_matrix:1b}}}
execute if entity @s[scores={valid_ingredients=5..}] at @s run function atrium:formula_crafting/enchantment/enchantment_reset
scoreboard players set @s valid_ingredients 0
