# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. 
# If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. 
# Regardless of success or failure, reset the crafting score afterwards.
# Note: infusion_base_item handles the first item - this script will handle any remaining item checks.
#
# Check NORTH WEST for Redstone
execute positioned ~-3 ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone"}}] run scoreboard players add @s valid_ingredients 1
# Check NORTH EAST for Redstone
execute positioned ~3 ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone"}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER NORTH for Inert Focus
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_inert_focus:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_inert_focus:1b}}}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER WEST for Fire Charge
execute positioned ~-2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:fire_charge"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:fire_charge"}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER EAST for Fire Charge
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:fire_charge"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:fire_charge"}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER SOUTH for Stick
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stick"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stick"}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH WEST for Campfire
execute positioned ~-3 ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:campfire"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:campfire"}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH EAST for Campfire
execute positioned ~3 ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:campfire"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:campfire"}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH for Stick
execute positioned ~ ~ ~4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stick"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stick"}}] run scoreboard players add @s valid_ingredients 1
#
execute if entity @s[scores={valid_ingredients=9..}] at @s run summon item ~ ~1 ~ {Tags:["atrium_formula_product"],Motion:[0.0,0.02,0.0],NoGravity:1b,Glowing:1b,Item:{id:"minecraft:egg",count:1,components:{"minecraft:item_name":'{"text":"Extremely Reportable Egg"}',"minecraft:lore":['{"text":"Seems like something you"}','{"text":"should report to the Admins."}'],"minecraft:custom_model_data":333081,"minecraft:custom_data":{atrium_extremely_reportable_egg:1}}}}
execute if entity @s[scores={valid_ingredients=9..}] at @s run item replace entity @e[limit=1,sort=nearest,tag=atrium_formula_product] container.0 with minecraft:diamond_hoe[minecraft:custom_model_data=333062,minecraft:lore=['{"text":"◇ Fire Sigil I","color":"gray","italic":false}','{"text":"◇ Throw Flames I","color":"gray","italic":false}','{"text":" "}','{"text":"When in Off Hand:","color":"gray","italic":false}','{"text":"+1 Casting Power","color":"blue","italic":false}'],minecraft:attribute_modifiers={modifiers:[{amount:2,operation:"add_value",slot:"mainhand",type:"generic.attack_damage",id:"atrium:staff_attack_damage"}]},minecraft:item_name='{"text":"Staff of Fire"}',minecraft:custom_data={atrium_chargeable:1b,atrium_fire_staff:1b,atrium_staff:1b,atrium_staff_lv:1b}] 1
execute if entity @s[scores={valid_ingredients=9..}] at @s run function atrium:formula_crafting/infusion/infusion_reset
execute if entity @s[scores={valid_ingredients=9..}] run advancement grant @p[distance=..10,gamemode=!spectator] only atrium:magic/arcane_apprentice
scoreboard players set @s valid_ingredients 0
