# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. Regardless of success or failure, reset the crafting score afterwards.
# Note: ap_baseitem handles the first item - this script will handle any remaining item checks.
#
#
# Check SOUTH for Bowl.
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:bowl",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:bowl",Count:1b}}] run scoreboard players add @s cauldron 1
#
# Check EAST for Iron Nugget
execute positioned ~-2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_nugget",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_nugget",Count:1b}}] run scoreboard players add @s cauldron 1
#
execute if entity @s[scores={cauldron=2..}] at @s run summon item ~ ~2 ~ {NoGravity:1b,Glowing:1b,Motion:[0.0,0.05,0.0],Item:{id:"minecraft:glowstone_dust",Count:1b,tag:{display:{Name:'{"text":"Stardust","color":"yellow","italic":false}',Lore:['{"text":"It glimmers with cosmic"}','{"text":"glee. Very difficult to"}','{"text":"get out of the carpet."}']},HideFlags:1,stardust:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}}
execute if entity @s[scores={cauldron=2..}] at @s run summon item ~ ~1.8 ~ {NoGravity:1b,Glowing:1b,Motion:[0.0,0.05,0.0],Item:{id:"minecraft:bowl",Count:1b}}
execute if entity @s[scores={cauldron=2..}] at @s run summon item ~ ~1.8 ~ {NoGravity:1b,Glowing:1b,Motion:[0.0,0.05,0.0],Item:{id:"minecraft:iron_nugget",Count:1b}}
execute if entity @s[scores={cauldron=2..}] at @s run function atrium:magic/advancedpotions/ap_reset
scoreboard players set @s cauldron 0
