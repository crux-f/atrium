# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. Regardless of success or failure, reset the crafting score afterwards.
# Note: ap_baseitem handles the first item - this script will handle any remaining item checks.
#
#
# Check CENTER EAST for Iron Nugget
execute positioned ~2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_nugget",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_nugget",Count:1b}}] run scoreboard players add @s cauldron 1
#
# Check CENTER SOUTH for Gunpowder
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] run scoreboard players add @s cauldron 1
#
# Check CENTER WEST for Gold Nugget
execute positioned ~-2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gold_nugget",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gold_nugget",Count:1b}}] run scoreboard players add @s cauldron 1
#
execute if entity @s[scores={cauldron=3..}] at @s run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:gunpowder",Count:1b,tag:{display:{Name:'{"text":"Transmutation Powder","color":"gray","italic":false}',Lore:['{"text":"Used to instigate"}','{"text":"volatile magical change."}','{"text":"Do Not Eat."}']},HideFlags:1,transmutation_powder:1b,Enchantments:[{id:"minecraft:power",lvl:1s}]}}}
execute if entity @s[scores={cauldron=3..}] at @s run function atrium:magic/advancedpotions/ap_reset
scoreboard players set @s cauldron 0
