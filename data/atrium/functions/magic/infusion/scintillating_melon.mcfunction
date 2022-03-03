# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. Regardless of success or failure, reset the crafting score afterwards.
# Note: i_baseitem handles the first item - this script will handle any remaining item checks.
#
#
# Check CENTER EAST for Blaze Rod
execute positioned ~2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blaze_rod",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blaze_rod",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check CENTER SOUTH for Glowstone Dust
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glowstone_dust",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glowstone_dust",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check CENTER WEST for Blaze Rod
execute positioned ~-2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blaze_rod",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blaze_rod",Count:1b}}] run scoreboard players add @s infusion 1
# 
execute if entity @s[scores={infusion=3..}] at @s run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:glistering_melon_slice",Count:1b,tag:{display:{Name:'{"text":"Scintillating Melon","color":"yellow","italic":false}',Lore:['{"text":"It shines with energy,"}','{"text":"almost too brightly."}','{"text":"Very sour."}']},HideFlags:1,scintillating_melon:1b,Enchantments:[{id:"minecraft:power",lvl:1s}]}}}
execute if entity @s[scores={infusion=3..}] at @s run function atrium:magic/infusion/infusion_reset
scoreboard players set @s infusion 0
