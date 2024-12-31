# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. 
# If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. 
# Regardless of success or failure, reset the crafting score afterwards.
# Note: infusion_base_item handles the first item - this script will handle any remaining item checks.
#
# Check NORTH WEST for Coal Ore OR Deepslate Coal Ore
execute positioned ~-3 ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:coal_ore"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:coal_ore"}}] run scoreboard players add @s valid_ingredients 1
execute positioned ~-3 ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:deepslate_coal_ore"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:deepslate_coal_ore"}}] run scoreboard players add @s valid_ingredients 1
# Check NORTH EAST for Iron Ore OR Deepslate Iron Ore
execute positioned ~3 ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_ore"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_ore"}}] run scoreboard players add @s valid_ingredients 1
execute positioned ~3 ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:deepslate_iron_ore"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:deepslate_iron_ore"}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER NORTH for Emerald Ore OR Deepslate Emerald Ore
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald_ore"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald_ore"}}] run scoreboard players add @s valid_ingredients 1
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:deepslate_emerald_ore"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:deepslate_emerald_ore"}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER WEST for Lapis Lazuli Ore OR Deepslate Lapis Lazuli Ore
execute positioned ~-2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lapis_ore"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lapis_ore"}}] run scoreboard players add @s valid_ingredients 1
execute positioned ~-2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:deepslate_lapis_ore"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:deepslate_lapis_ore"}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER EAST for Redstone Ore OR Deepslate Redstone Ore
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone_ore"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone_ore"}}] run scoreboard players add @s valid_ingredients 1
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:deepslate_redstone_ore"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:deepslate_redstone_ore"}}] run scoreboard players add @s valid_ingredients 1
# Check WEST for Stone
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone"}}] run scoreboard players add @s valid_ingredients 1
# Check EAST for Stone
execute positioned ~4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone"}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER SOUTH for Diamond Ore OR Deepslate Diamond Ore
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond_ore"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond_ore"}}] run scoreboard players add @s valid_ingredients 1
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:deepslate_diamond_ore"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:deepslate_diamond_ore"}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH WEST for Copper Ore OR Deepslate Copper Ore
execute positioned ~-3 ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:copper_ore"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:copper_ore"}}] run scoreboard players add @s valid_ingredients 1
execute positioned ~-3 ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:deepslate_copper_ore"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:deepslate_copper_ore"}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH EAST for Gold Ore OR Deepslate Gold Ore
execute positioned ~3 ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gold_ore"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gold_ore"}}] run scoreboard players add @s valid_ingredients 1
execute positioned ~3 ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:deepslate_gold_ore"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:deepslate_gold_ore"}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH for Stone
execute positioned ~ ~ ~4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone"}}] run scoreboard players add @s valid_ingredients 1
#
execute if entity @s[scores={valid_ingredients=11..}] at @s run summon item ~ ~1 ~ {Tags:["atrium_formula_product"],Motion:[0.0,0.02,0.0],NoGravity:1b,Glowing:1b,Item:{id:"minecraft:egg",count:1,components:{"minecraft:item_name":'{"text":"Extremely Reportable Egg"}',"minecraft:lore":['{"text":"Seems like something you"}','{"text":"should report to the Admins."}'],"minecraft:custom_model_data":{strings:["atrium_strange_egg"]},"minecraft:custom_data":{atrium_extremely_reportable_egg:1}}}}
execute if entity @s[scores={valid_ingredients=11..}] at @s run item replace entity @e[limit=1,sort=nearest,tag=atrium_formula_product] container.0 with minecraft:clay_ball[minecraft:custom_model_data={strings:["atrium_mountains_root"]},minecraft:lore=['{"text":"A culmination of all"}','{"text":"the minerals beneath "}','{"text":"the earth."}'],minecraft:item_name='{"text":"Mountain\'s Root"}',minecraft:custom_data={atrium_mountains_root:1b}]
execute if entity @s[scores={valid_ingredients=11..}] at @s run function atrium:formula_crafting/infusion/infusion_reset
scoreboard players set @s valid_ingredients 0
