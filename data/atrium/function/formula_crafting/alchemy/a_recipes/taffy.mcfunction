# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. 
# If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. 
# Regardless of success or failure, reset the crafting score afterwards.
# Note: alchemy_base_item handles the first item - this script will handle any remaining item checks.
#
# Check SOUTH for Paper
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:paper"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:paper"}}] run scoreboard players add @s valid_ingredients 1
# Check Crafting Station for Stick
execute positioned ~2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stick"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stick"}}] run scoreboard players add @s valid_ingredients 1
#
execute if entity @s[scores={valid_ingredients=2..}] at @s run summon item ~ ~1 ~ {Tags:["atrium_formula_product"],Motion:[0.0,0.02,0.0],NoGravity:1b,Glowing:1b,Item:{id:"minecraft:egg",count:4,components:{"minecraft:item_name":'{"text":"Extremely Reportable Egg"}',"minecraft:lore":['{"text":"Seems like something you"}','{"text":"should report to the Admins."}'],"minecraft:custom_model_data":333081,"minecraft:custom_data":{atrium_extremely_reportable_egg:1}}}}
execute if entity @s[scores={valid_ingredients=2..}] at @s run item replace entity @e[limit=1,sort=nearest,tag=atrium_formula_product] container.0 with minecraft:cookie[minecraft:custom_model_data=333154,minecraft:item_name='{"text":"Taffy"}',minecraft:custom_data={atrium_taffy:1b},minecraft:food={nutrition:1,saturation:0.4,eat_seconds:0.5}]
execute if entity @s[scores={valid_ingredients=2..}] at @s run function atrium:formula_crafting/alchemy/alchemy_reset
execute if entity @s[scores={valid_ingredients=2..}] at @s run function atrium:formula_crafting/alchemy/station_reset
# Give items back
execute if entity @s[scores={valid_ingredients=2..}] at @s run summon item ~ ~1 ~ {Motion:[0.0,0.0,0.0],NoGravity:1b,Glowing:1b,Item:{id:"minecraft:glass_bottle"}}
execute if entity @s[scores={valid_ingredients=2..}] at @s run summon item ~ ~1 ~ {Motion:[0.0,0.0,0.0],NoGravity:1b,Glowing:1b,Item:{id:"minecraft:stick"}}
scoreboard players set @s valid_ingredients 0
