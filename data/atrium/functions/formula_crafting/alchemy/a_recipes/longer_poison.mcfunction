# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. 
# If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. 
# Regardless of success or failure, reset the crafting score afterwards.
# Note: alchemy_base_item handles the first item - this script will handle any remaining item checks.
#
# Check WEST for Mundane Potion
execute positioned ~-2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:mundane"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:mundane"}}}] run scoreboard players add @s valid_ingredients 1
# Check EAST for Blaze Powder
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check NORTH for Warped Fungus
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:warped_fungus",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:warped_fungus",Count:1b}}] run scoreboard players add @s valid_ingredients 1
#
execute if entity @s[scores={valid_ingredients=3..}] at @s run summon item ~ ~1 ~ {Motion:[0.0,0.02,0.0],NoGravity:1b,Glowing:1b,Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Potion of Poison","italic":false}'},CustomModelData:333067,atrium_longer_poison:1b,atrium_tier_3_potion:1b,CustomPotionEffects:[{Id:19,Amplifier:0b,Duration:4800,ShowParticles:1b}],Potion:"minecraft:empty",CustomPotionColor:5149489}}}
execute if entity @s[scores={valid_ingredients=3..}] at @s run function atrium:formula_crafting/alchemy/alchemy_reset
execute if entity @s[scores={valid_ingredients=3..}] at @s positioned ~ ~ ~-2 run advancement grant @p[distance=..5,gamemode=!spectator] only atrium:magic/secret_ingredient
scoreboard players set @s valid_ingredients 0
