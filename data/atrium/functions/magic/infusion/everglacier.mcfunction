# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. Regardless of success or failure, reset the crafting score afterwards.
# Note: i_baseitem handles the first item - this script will handle any remaining item checks.
#
#
# Check NORTH EAST for Calm Crystal
execute positioned ~3 ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{calm_crystal:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{calm_crystal:1b}}}] run scoreboard players add @s infusion 1
#
# Check EAST for Blue Ice
execute positioned ~4 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blue_ice",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~4 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blue_ice",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check SOUTH EAST for Calm Crystal
execute positioned ~3 ~2 ~3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{calm_crystal:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~2 ~3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{calm_crystal:1b}}}] run scoreboard players add @s infusion 1
#
# Check SOUTH for Blue Ice
execute positioned ~ ~2 ~4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blue_ice",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blue_ice",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check SOUTH WEST for Calm Crystal
execute positioned ~-3 ~2 ~3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{calm_crystal:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~2 ~3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{calm_crystal:1b}}}] run scoreboard players add @s infusion 1
#
# Check WEST for Blue Ice
execute positioned ~-4 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blue_ice",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blue_ice",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check NORTH WEST for Calm Crystal
execute positioned ~-3 ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{calm_crystal:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{calm_crystal:1b}}}] run scoreboard players add @s infusion 1
#
# Check CENTER NORTH for Bottle o' Enchanting
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check CENTER EAST for Bottle o' Enchanting
execute positioned ~2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check CENTER SOUTH for Bottle o' Enchanting
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check CENTER WEST for Bottle o' Enchanting
execute positioned ~-2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] run scoreboard players add @s infusion 1
#
execute if entity @s[scores={infusion=11..}] at @s run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:blue_ice",Count:1b,tag:{display:{Name:'{"text":"Everglacier","color":"aqua","italic":false}',Lore:['{"text":"Concentration I","color":"gray","italic":false}','{"text":"A globe of ice and crystal."}','{"text":"Within its quiet stillness,"}','{"text":"thoughts are held in stasis."}','{"text":" "}','[{"text":"Knowledge Absorbed:","color":"gray","italic":false},{"text":" 0%","color":"red","italic":false}]','{"text":" "}','{"text":"When in Main Hand:","color":"gray","italic":false}','{"text":"Absorbs Knowledge","color":"blue","italic":false}']},HideFlags:1,everglacier:1b,concentration_enchant:1b,charges:0b,concentration_lv:1b,Enchantments:[{id:"minecraft:frost_walker",lvl:1s}]}}}
execute if entity @s[scores={infusion=11..}] at @s run function atrium:magic/infusion/infusion_reset
scoreboard players set @s infusion 0
