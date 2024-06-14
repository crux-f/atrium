# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. 
# If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. 
# Regardless of success or failure, reset the crafting score afterwards.
# Note: infusion_base_item handles the first item - this script will handle any remaining item checks.
#
# Check NORTH WEST for Dull Crystal
execute positioned ~-3 ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_dull_crystal:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_dull_crystal:1b}}}}] run scoreboard players add @s valid_ingredients 1
# Check NORTH EAST for Dandelion
execute positioned ~3 ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:dandelion"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:dandelion"}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER NORTH for Lantern
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lantern"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lantern"}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER WEST for Dull Crystal
execute positioned ~-2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_dull_crystal:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_dull_crystal:1b}}}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER EAST for Dull Crystal
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_dull_crystal:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_dull_crystal:1b}}}}] run scoreboard players add @s valid_ingredients 1
# Check WEST for Comet Berries
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_comet_berries:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_comet_berries:1b}}}}] run scoreboard players add @s valid_ingredients 1
# Check EAST for Comet Berries
execute positioned ~4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_comet_berries:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_comet_berries:1b}}}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER SOUTH for Lantern
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lantern"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lantern"}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH WEST for Sunflower
execute positioned ~-3 ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:sunflower"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:sunflower"}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH EAST for Dull Crystal
execute positioned ~3 ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_dull_crystal:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_dull_crystal:1b}}}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH for Rumbling Crystal
execute positioned ~ ~ ~4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_rumbling_crystal:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_rumbling_crystal:1b}}}}] run scoreboard players add @s valid_ingredients 1
#
execute if entity @s[scores={valid_ingredients=11..}] at @s run summon item ~ ~1 ~ {Tags:["atrium_formula_product"],Motion:[0.0,0.02,0.0],NoGravity:1b,Glowing:1b,Item:{id:"minecraft:egg",count:1,components:{"minecraft:item_name":'{"text":"Extremely Reportable Egg"}',"minecraft:lore":['{"text":"Seems like something you"}','{"text":"should report to the Admins."}'],"minecraft:custom_model_data":333081,"minecraft:custom_data":{atrium_extremely_reportable_egg:1}}}}
execute if entity @s[scores={valid_ingredients=11..}] at @s run item replace entity @e[limit=1,sort=nearest,tag=atrium_formula_product] container.0 with minecraft:yellow_stained_glass[minecraft:lore=['{"text":"It hums pleasantly"}','{"text":"in your hands, warm to"}','{"text":"the touch."}'],minecraft:attribute_modifiers={modifiers:[{amount:4,name:"generic.max_health",operation:"add_value",slot:"mainhand",type:"generic.max_health",id:"atrium:ambient_crystal_max_health_mainhand"},{amount:2,name:"generic.max_health",operation:"add_value",slot:"offhand",type:"generic.max_health",id:"atrium:ambient_crystal_max_health_offhand"}]},minecraft:enchantments={levels:{"minecraft:protection":1},show_in_tooltip:0b},minecraft:item_name='{"text":"Ambient Crystal","color":"yellow"}',minecraft:custom_data={atrium_ambient_crystal:1b}] 1
execute if entity @s[scores={valid_ingredients=11..}] at @s run function atrium:formula_crafting/infusion/infusion_reset
scoreboard players set @s valid_ingredients 0
