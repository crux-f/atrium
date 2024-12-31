# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. 
# If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. 
# Regardless of success or failure, reset the crafting score afterwards.
# Note: infusion_base_item handles the first item - this script will handle any remaining item checks.
#
# Check EAST for Paper
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:paper"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:paper"}}] run scoreboard players add @s valid_ingredients 1
# Check WEST for Paper
execute positioned ~-2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:paper"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:paper"}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH for Leather
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:leather"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:leather"}}] run scoreboard players add @s valid_ingredients 1
#
execute if entity @s[scores={valid_ingredients=3..}] at @s run summon item ~ ~1 ~ {Tags:["atrium_formula_product"],Motion:[0.0,0.02,0.0],NoGravity:1b,Glowing:1b,Item:{id:"minecraft:egg",count:1,components:{"minecraft:item_name":'{"text":"Extremely Reportable Egg"}',"minecraft:lore":['{"text":"Seems like something you"}','{"text":"should report to the Admins."}'],"minecraft:custom_model_data":{strings:["atrium_strange_egg"]},"minecraft:custom_data":{atrium_extremely_reportable_egg:1}}}}
execute if entity @s[scores={valid_ingredients=3..}] at @s run function atrium:formula_crafting/infusion/translate_infusion_research
execute if entity @s[scores={valid_ingredients=3..}] at @s run function atrium:formula_crafting/infusion/infusion_reset
# Reset score
scoreboard players set @s valid_ingredients 0