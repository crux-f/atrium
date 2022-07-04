# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. Regardless of success or failure, reset the crafting score afterwards.
# Note: i_baseitem handles the first item - this script will handle any remaining item checks.
#
#
# Check NORTH EAST for Waxed Cut Copper
execute positioned ~3 ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:waxed_cut_copper",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:waxed_cut_copper",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check NORTH WEST for Waxed Cut Copper
execute positioned ~-3 ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:waxed_cut_copper",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:waxed_cut_copper",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check CENTER NORTH for Carved Pumpkin
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:carved_pumpkin",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:carved_pumpkin",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check CENTER EAST for Charged Blaze Rod
execute positioned ~2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{charged_blaze_rod:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{charged_blaze_rod:1b}}}] run scoreboard players add @s infusion 1
#
# Check CENTER SOUTH for Campfire
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:campfire",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:campfire",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check CENTER WEST for Charged Blaze Rod
execute positioned ~-2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{charged_blaze_rod:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{charged_blaze_rod:1b}}}] run scoreboard players add @s infusion 1
#
execute if entity @s[scores={infusion=6..}] at @s run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:carved_pumpkin",Count:1b,tag:{display:{Name:'{"text":"Hellish Lantern","color":"red","italic":false}',Lore:['{"text":"It hungers for flames."}','{"text":" "}','[{"text":"Absorbed Ghast Fireballs:","color":"gray","italic":false},{"text":" 0","color":"red"}]']},hellish_lantern:1b,charges:0b,Enchantments:[{id:"minecraft:power",lvl:1s}]}}}
execute if entity @s[scores={infusion=6..}] at @s run function atrium:magic/infusion/infusion_reset
scoreboard players set @s infusion 0
