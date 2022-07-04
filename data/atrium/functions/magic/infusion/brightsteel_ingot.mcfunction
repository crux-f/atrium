# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. Regardless of success or failure, reset the crafting score afterwards.
# Note: i_baseitem handles the first item - this script will handle any remaining item checks.
#
#
# Check CENTER EAST for Glowstone Dust
execute positioned ~2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glowstone_dust",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glowstone_dust",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check CENTER SOUTH for Iron Ingot
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check CENTER WEST for Glowstone Dust
execute positioned ~-2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glowstone_dust",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glowstone_dust",Count:1b}}] run scoreboard players add @s infusion 1
#
execute if entity @s[scores={infusion=3..}] at @s run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:'{"text":"Brightsteel Ingot","color":"yellow","italic":false}',Lore:['{"text":"Processed iron infused"}','{"text":"with light."}','{"text":"Also became physically"}','{"text":"lighter, somehow."}']},HideFlags:1,brightsteel_ingot:1b,Enchantments:[{id:"minecraft:power",lvl:1s}]}}}
execute if entity @s[scores={infusion=3..}] at @s run function atrium:magic/infusion/infusion_reset
scoreboard players set @s infusion 0
