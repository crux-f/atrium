# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. Regardless of success or failure, reset the crafting score afterwards.
# Note: ap_baseitem handles the first item - this script will handle any remaining item checks.
#
#
# Check SOUTH for base item.
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:thick"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:thick"}}}] run scoreboard players add @s cauldron 1
#
# Check WEST for mixer item.
# THE THIRD ITEM ALWAYS HAS TO BE ..2 FOR DUMB REASONS DO NOT CHANGE THIS OR I WILL STEAL YOUR SHOES
execute positioned ~-2 ~2 ~ at @e[type=minecraft:item_frame,distance=..2,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:fire_resistance"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..2,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:fire_resistance"}}}] run scoreboard players add @s cauldron 1
#
# Check EAST for special ingredient
execute positioned ~2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:honeycomb",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:honeycomb",Count:1b}}] run scoreboard players add @s cauldron 1
#
execute if entity @s[scores={cauldron=3..}] at @s run summon item ~ ~2 ~ {NoGravity:1b,Glowing:1b,Motion:[0.0,0.05,0.0],Item:{id:"minecraft:honey_bottle",Count:1b,tag:{display:{Name:'{"text":"Essence of Amber","color":"gold","italic":false}',Lore:['{"text":"The purest pigment of amber"}','{"text":"possible in this world."}']},essenceofamber:1b}}}
execute if entity @s[scores={cauldron=3..}] at @s run function atrium:magic/advancedpotions/ap_reset
scoreboard players set @s cauldron 0
