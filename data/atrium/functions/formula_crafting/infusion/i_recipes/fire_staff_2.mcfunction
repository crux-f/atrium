# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. 
# If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. 
# Regardless of success or failure, reset the crafting score afterwards.
# Note: infusion_base_item handles the first item - this script will handle any remaining item checks.
#
# Check CENTER NORTH for Staff of Fire [+2]
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_fire_staff:1b,atrium_staff_lv:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_fire_staff:1b,atrium_staff_lv:1b}}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER WEST for Pure Redstone
execute positioned ~-2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_pure_redstone:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_pure_redstone:1b}}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER EAST for Pure Redstone
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_pure_redstone:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_pure_redstone:1b}}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER SOUTH for Gold Ingot
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gold_ingot",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gold_ingot",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH for Blaze Rod
execute positioned ~ ~ ~4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blaze_rod",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blaze_rod",Count:1b}}] run scoreboard players add @s valid_ingredients 1
#
execute if entity @s[scores={valid_ingredients=5..}] at @s run summon item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:diamond_hoe",Count:1b,tag:{display:{Name:'{"text":"Staff of Fire","italic":false}',Lore:['{"text":"◇ Fire Sigil II","color":"gray","italic":false}','{"text":"◇ Throw Flames II","color":"gray","italic":false}','{"text":"◇ Flare I","color":"gray","italic":false}','{"text":"◇ Stoke Furnace I","color":"gray","italic":false}','{"text":" "}','{"text":"When in Off Hand:","color":"gray","italic":false}','{"text":"+2 Casting Power","color":"blue","italic":false}']},CustomModelData:333062,atrium_staff:1b,atrium_staff_lv:2b,atrium_fire_staff:1b,atrium_chargeable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;637717026,1710441391,-1943706047,783506473],Slot:"mainhand"}]}}}
execute if entity @s[scores={valid_ingredients=5..}] at @s run function atrium:formula_crafting/infusion/infusion_reset
scoreboard players set @s valid_ingredients 0
