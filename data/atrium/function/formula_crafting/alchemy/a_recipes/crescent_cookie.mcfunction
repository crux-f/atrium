# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. 
# If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. 
# Regardless of success or failure, reset the crafting score afterwards.
# Note: alchemy_base_item handles the first item - this script will handle any remaining item checks.
#
# Check WEST for Light Sauce
execute positioned ~-2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_light_sauce:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_light_sauce:1b}}}}] run scoreboard players add @s valid_ingredients 1
# Check EAST for Charcoal
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:charcoal"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:charcoal"}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH for Cookie
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:cookie"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:cookie"}}] run scoreboard players add @s valid_ingredients 1
# Check Crafting Station for Sugar
execute positioned ~2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:sugar"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:sugar"}}] run scoreboard players add @s valid_ingredients 1
#
execute if entity @s[scores={valid_ingredients=4..}] at @s run summon item ~ ~1 ~ {Motion:[0.0,0.02,0.0],NoGravity:1b,Glowing:1b,Item:{id:"minecraft:cookie",count:2,components:{"minecraft:item_name":{text:'Crescent Cookie'},"minecraft:lore":[{"text":" "},{"color":"gray","italic":false,"text":"When fed to an Allay:"},{"color":"blue","italic":false,"text":"Glowing (5:00)"},{"color":"blue","italic":false,"text":"Allay follows player"}],"minecraft:custom_model_data":{strings:["atrium_crescent_cookie"]},"minecraft:custom_data":{atrium_crescent_cookie:1b}}}}
execute if entity @s[scores={valid_ingredients=4..}] at @s run function atrium:formula_crafting/alchemy/alchemy_reset
execute if entity @s[scores={valid_ingredients=4..}] at @s run function atrium:formula_crafting/alchemy/station_reset
# Give items back
execute if entity @s[scores={valid_ingredients=4..}] at @s run summon item ~ ~1 ~ {Motion:[0.0,0.0,0.0],NoGravity:1b,Glowing:1b,Item:{id:"minecraft:bowl"}}
scoreboard players set @s valid_ingredients 0
