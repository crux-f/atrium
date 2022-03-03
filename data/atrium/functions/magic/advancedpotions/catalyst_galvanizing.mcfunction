# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. Regardless of success or failure, reset the crafting score afterwards.
# Note: ap_baseitem handles the first item - this script will handle any remaining item checks.
#
#
# Check SOUTH for Magma Block
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:magma_block",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:magma_block",Count:1b}}] run scoreboard players add @s cauldron 1
#
# Check EAST for Golden Nugget
execute positioned ~2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gold_nugget",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gold_nugget",Count:1b}}] run scoreboard players add @s cauldron 1
#
# Check WEST for Golden Nugget
execute positioned ~-2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gold_nugget",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gold_nugget",Count:1b}}] run scoreboard players add @s cauldron 1
#
execute if entity @s[scores={cauldron=3..}] at @s run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:glowstone",Count:1b,tag:{display:{Name:'{"text":"Potion Catalyst","color":"aqua","italic":false}',Lore:['{"text":"Galvanizing","color":"yellow","italic":false}','{"text":"Glowstone, when energized"}','{"text":"by magma, has the potential"}','{"text":"to increase the power"}','{"text":"of potions beyond their"}','{"text":"normal limitations."}']},HideFlags:1,catalyst_galv:1b,Enchantments:[{id:"minecraft:power",lvl:1s}]}}}
execute if entity @s[scores={cauldron=3..}] at @s run function atrium:magic/advancedpotions/ap_reset
scoreboard players set @s cauldron 0
