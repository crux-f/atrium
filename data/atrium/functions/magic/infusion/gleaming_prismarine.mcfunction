# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. Regardless of success or failure, reset the crafting score afterwards.
# Note: i_baseitem handles the first item - this script will handle any remaining item checks.
#
#
# Check CENTER EAST for Prismarine Crystals
execute positioned ~2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:prismarine_crystals",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:prismarine_crystals",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check CENTER SOUTH for Prismarine Shard
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:prismarine_shard",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:prismarine_shard",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check CENTER WEST for Prismarine Crystals
execute positioned ~-2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:prismarine_crystals",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:prismarine_crystals",Count:1b}}] run scoreboard players add @s infusion 1
# 
execute if entity @s[scores={infusion=3..}] at @s run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:prismarine_shard",Count:1b,tag:{display:{Name:'{"text":"Gleaming Prismarine","color":"dark_aqua","italic":false}',Lore:['{"text":"This mysterious shard"}','{"text":"gleams even when not in"}','{"text":"direct light."}','{"text":"If you hold it up to your"}','{"text":"ear, you can hear the sea."}']},HideFlags:1,gleaming_prismarine:1b,Enchantments:[{id:"minecraft:luck_of_the_sea",lvl:1s}]}}}
execute if entity @s[scores={infusion=3..}] at @s run function atrium:magic/infusion/infusion_reset
scoreboard players set @s infusion 0
