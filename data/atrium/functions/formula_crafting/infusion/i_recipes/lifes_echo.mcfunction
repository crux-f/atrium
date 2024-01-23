# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. 
# If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. 
# Regardless of success or failure, reset the crafting score afterwards.
# Note: infusion_base_item handles the first item - this script will handle any remaining item checks.
#
# Check NORTH for Potion of Regeneration (4:00)
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_longer_regeneration:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_longer_regeneration:1b}}}] run scoreboard players add @s valid_ingredients 1
# Check NORTH WEST for Stripped Spruce Wood
execute positioned ~-3 ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_spruce_wood",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_spruce_wood",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check NORTH EAST for Stripped Mangrove Wood
execute positioned ~3 ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_mangrove_wood",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_mangrove_wood",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER WEST for Stripped Birch Wood
execute positioned ~-2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_birch_wood",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_birch_wood",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER EAST for Stripped Dark Oak Wood
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_dark_oak_wood",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_dark_oak_wood",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check WEST for Stripped Oak Wood
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_oak_wood",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_oak_wood",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check EAST for Stripped Acacia Wood
execute positioned ~4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_acacia_wood",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_acacia_wood",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER SOUTH for Stripped Warped Hyphae
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_warped_hyphae",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_warped_hyphae",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH WEST for Stripped Cherry Wood
execute positioned ~-3 ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_cherry_wood",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_cherry_wood",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH EAST for Stripped Jungle Wood
execute positioned ~3 ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_jungle_wood",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_jungle_wood",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH for Potion of Regeneration (4:00)
execute positioned ~ ~ ~4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_longer_regeneration:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_longer_regeneration:1b}}}] run scoreboard players add @s valid_ingredients 1
#
execute if entity @s[scores={valid_ingredients=11..}] at @s run summon item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:warped_hyphae",Count:1b,tag:{display:{Name:'{"text":"Life\'s Echo","italic":false}',Lore:['{"text":"They say Oswald created"}','{"text":"the forests of the world."}','{"text":"The silent whispers from"}','{"text":"within the echo could"}','{"text":"tell you, if you knew"}','{"text":"how to listen."}']},HideFlags:1,atrium_lifes_echo:1b,Enchantments:[{id:"minecraft:infinity",lvl:1s}]}}}
execute if entity @s[scores={valid_ingredients=11..}] at @s run function atrium:formula_crafting/infusion/infusion_reset
scoreboard players set @s valid_ingredients 0
