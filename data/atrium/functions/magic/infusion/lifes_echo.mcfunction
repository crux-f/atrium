# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. Regardless of success or failure, reset the crafting score afterwards.
# Note: i_baseitem handles the first item - this script will handle any remaining item checks.
#
#
# Check NORTH EAST for Stripped Dark Oak Wood
execute positioned ~3 ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_dark_oak_wood",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_dark_oak_wood",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check EAST for Transmutation Powder
execute positioned ~4 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{transmutation_powder:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~4 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{transmutation_powder:1b}}}] run scoreboard players add @s infusion 1
#
# Check SOUTH EAST for Stripped Warped Hyphae
execute positioned ~3 ~2 ~3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_warped_hyphae",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~2 ~3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_warped_hyphae",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check SOUTH for Spellcraft Compound
execute positioned ~ ~2 ~4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{spellcraft_compound:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{spellcraft_compound:1b}}}] run scoreboard players add @s infusion 1
#
# Check SOUTH WEST for Stripped Acacia Wood
execute positioned ~-3 ~2 ~3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_acacia_wood",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~2 ~3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_acacia_wood",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check WEST for Transmutation Powder
execute positioned ~-4 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{transmutation_powder:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{transmutation_powder:1b}}}] run scoreboard players add @s infusion 1
#
# Check NORTH WEST for Stripped Crimson Hyphae
execute positioned ~-3 ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_crimson_hyphae",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_crimson_hyphae",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check CENTER NORTH for Stripped Oak Wood
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_oak_wood",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_oak_wood",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check CENTER EAST for Stripped Birch Wood
execute positioned ~2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_birch_wood",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_birch_wood",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check CENTER SOUTH for Stripped Jungle Wood
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_jungle_wood",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_jungle_wood",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check CENTER WEST for Stripped Spruce Wood
execute positioned ~-2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_spruce_wood",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_spruce_wood",Count:1b}}] run scoreboard players add @s infusion 1
#
execute if entity @s[scores={infusion=11..}] at @s run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:stripped_warped_hyphae",Count:1b,tag:{display:{Name:'{"text":"Life\'s Echo","color":"green","italic":false}',Lore:['{"text":"They say Oswald created"}','{"text":"the forests of the world."}','{"text":"The silent whispers from"}','{"text":"within the echo could"}','{"text":"tell you, if you knew"}','{"text":"how to listen."}']},HideFlags:1,lifes_echo:1b,Enchantments:[{id:"minecraft:infinity",lvl:1s}]}}}
execute if entity @s[scores={infusion=11..}] at @s run function atrium:magic/infusion/infusion_reset
scoreboard players set @s infusion 0
