# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. Regardless of success or failure, reset the crafting score afterwards.
# Note: ap_baseitem handles the first item - this script will handle any remaining item checks.
#
#
# Check SOUTH for Philter of Light-Eating
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{philter_lighteating:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{philter_lighteating:1b}}}] run scoreboard players add @s cauldron 1
#
# Check WEST for Crystal Vial 
# THE THIRD ITEM ALWAYS HAS TO BE ..2 FOR DUMB REASONS DO NOT CHANGE THIS OR I WILL STEAL YOUR SHOES
execute positioned ~-2 ~2 ~ at @e[type=minecraft:item_frame,distance=..2,nbt={Item:{tag:{crystal_vial:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..2,nbt={Item:{tag:{crystal_vial:1b}}}] run scoreboard players add @s cauldron 1
#
# Check EAST for Bottle o Enchanting
execute positioned ~2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] run scoreboard players add @s cauldron 1
#
execute if entity @s[scores={cauldron=3..}] at @s run summon item ~ ~2 ~ {NoGravity:1b,Glowing:1b,Motion:[0.0,0.05,0.0],Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Draft of the Prism","color":"light_purple","italic":false}',Lore:['{"text":"Prismatic (30:00)","color":"blue","italic":false}','{"text":" "}','{"text":"This potion is colorless,"}','{"text":"but when held to the light"}','{"text":"refracts a dazzling display."}']},HideFlags:33,draft_of_the_prism:1b,Enchantments:[{id:"minecraft:infinity",lvl:1s}],Potion:"minecraft:empty",CustomPotionColor:16777205}}}
execute if entity @s[scores={cauldron=3..}] at @s positioned ~ ~2 ~-6 run advancement grant @p[gamemode=!spectator] only atrium:magic/in_the_sauce
execute if entity @s[scores={cauldron=3..}] at @s run function atrium:magic/advancedpotions/ap_reset
scoreboard players set @s cauldron 0
