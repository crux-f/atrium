# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. 
# If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. 
# Regardless of success or failure, reset the crafting score afterwards.
# Note: infusion_base_item handles the first item - this script will handle any remaining item checks.
#
# Check NORTH WEST for Red Mushroom
execute positioned ~-3 ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:red_mushroom"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:red_mushroom"}}] run scoreboard players add @s valid_ingredients 1
# Check NORTH EAST for Dull Crystal
execute positioned ~3 ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_dull_crystal:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_dull_crystal:1b}}}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER NORTH for Blaze Powder
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blaze_powder"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blaze_powder"}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER WEST for Dull Crystal
execute positioned ~-2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_dull_crystal:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_dull_crystal:1b}}}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER EAST for Dull Crystal
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_dull_crystal:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_dull_crystal:1b}}}}] run scoreboard players add @s valid_ingredients 1
# Check WEST for Pure Redstone
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_pure_redstone:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_pure_redstone:1b}}}}] run scoreboard players add @s valid_ingredients 1
# Check EAST for Pure Redstone
execute positioned ~4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_pure_redstone:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_pure_redstone:1b}}}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER SOUTH for Blaze Powder
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blaze_powder"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blaze_powder"}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH WEST for Dull Crystal
execute positioned ~-3 ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_dull_crystal:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_dull_crystal:1b}}}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH EAST for Crimson Fungus
execute positioned ~3 ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:crimson_fungus"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:crimson_fungus"}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH for Blooming Crystal
execute positioned ~ ~ ~4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_blooming_crystal:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_blooming_crystal:1b}}}}] run scoreboard players add @s valid_ingredients 1
#
execute if entity @s[scores={valid_ingredients=11..}] at @s run summon item ~ ~1 ~ {Tags:["atrium_formula_product"],Motion:[0.0,0.02,0.0],NoGravity:1b,Glowing:1b,Item:{id:"minecraft:egg",count:1,components:{"minecraft:item_name":'{"text":"Extremely Reportable Egg"}',"minecraft:lore":['{"text":"Seems like something you"}','{"text":"should report to the Admins."}'],"minecraft:custom_model_data":{strings:["atrium_strange_egg"]},"minecraft:custom_data":{atrium_extremely_reportable_egg:1}}}}
execute if entity @s[scores={valid_ingredients=11..}] at @s run item replace entity @e[limit=1,sort=nearest,tag=atrium_formula_product] container.0 with minecraft:red_stained_glass[minecraft:lore=['{"text":"It pulses and sparks with"}','{"text":"pent-up energy."}'],minecraft:attribute_modifiers={modifiers:[{amount:3,operation:"add_value",slot:"mainhand",type:"attack_damage",id:"atrium:eager_crystal_attack_damage_mainhand"},{amount:0.15d,operation:"add_multiplied_base",slot:"mainhand",type:"attack_speed",id:"atrium:eager_crystal_attack_speed_mainhand"},{amount:1,operation:"add_value",slot:"offhand",type:"attack_damage",id:"atrium:eager_crystal_attack_damage_offhand"},{amount:0.07d,operation:"add_multiplied_base",slot:"offhand",type:"attack_speed",id:"atrium:eager_crystal_attack_speed_offhand"}]},minecraft:enchantments={levels:{"minecraft:unbreaking":1},show_in_tooltip:0b},minecraft:item_name='{"text":"Eager Crystal","color":"red"}',minecraft:custom_data={atrium_eager_crystal:1b}] 1
execute if entity @s[scores={valid_ingredients=11..}] at @s run function atrium:formula_crafting/infusion/infusion_reset
scoreboard players set @s valid_ingredients 0
