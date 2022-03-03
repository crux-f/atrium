# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. Regardless of success or failure, reset the crafting score afterwards.
# Note: i_baseitem handles the first item - this script will handle any remaining item checks.
#
#
# Check NORTH EAST for Transmutation Powder
execute positioned ~3 ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{transmutation_powder:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{transmutation_powder:1b}}}] run scoreboard players add @s infusion 1
#
# Check EAST for Stone
execute positioned ~4 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~4 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check SOUTH EAST for Transmutation Powder
execute positioned ~3 ~2 ~3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{transmutation_powder:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~2 ~3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{transmutation_powder:1b}}}] run scoreboard players add @s infusion 1
#
# Check SOUTH for Stone
execute positioned ~ ~2 ~4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check SOUTH WEST for Transmutation Powder
execute positioned ~-3 ~2 ~3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{transmutation_powder:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~2 ~3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{transmutation_powder:1b}}}] run scoreboard players add @s infusion 1
#
# Check WEST for Stone
execute positioned ~-4 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check NORTH WEST for Transmutation Powder
execute positioned ~-3 ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{transmutation_powder:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{transmutation_powder:1b}}}] run scoreboard players add @s infusion 1
#
# Check CENTER NORTH for Crying Obsidian
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:crying_obsidian",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:crying_obsidian",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check CENTER EAST for Chiseled Stone Bricks
execute positioned ~2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:chiseled_stone_bricks",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:chiseled_stone_bricks",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check CENTER SOUTH for Crying Obsidian
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:crying_obsidian",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:crying_obsidian",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check CENTER WEST for Chiseled Stone Bricks
execute positioned ~-2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:chiseled_stone_bricks",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:chiseled_stone_bricks",Count:1b}}] run scoreboard players add @s infusion 1
#
execute if entity @s[scores={infusion=11..}] at @s run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:lodestone",Count:1b,tag:{display:{Name:'{"text":"Dimensional Anchor","color":"purple","italic":false}',Lore:['{"text":"This lodestone- now informed"}','{"text":"by the Crying Obsidian"}','{"text":"found in The Nether- is"}','{"text":"able to parse spacial"}','{"text":"signatures in the Atrium"}','{"text":"Network."}']},HideFlags:1,dimensional_anchor:1b,Enchantments:[{id:"minecraft:protection",lvl:1s}]}}}
execute if entity @s[scores={infusion=11..}] at @s run function atrium:magic/infusion/infusion_reset
scoreboard players set @s infusion 0
