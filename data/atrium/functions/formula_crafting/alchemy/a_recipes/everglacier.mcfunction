# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. 
# If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. 
# Regardless of success or failure, reset the crafting score afterwards.
# Note: alchemy_base_item handles the first item - this script will handle any remaining item checks.
#
# Check WEST for Blue Ice
execute positioned ~-2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blue_ice",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blue_ice",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check EAST for Blue Ice
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blue_ice",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blue_ice",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH for Bottle o' Enchanting
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] run scoreboard players add @s valid_ingredients 1
#
execute if entity @s[scores={valid_ingredients=3..}] at @s run summon item ~ ~1 ~ {Motion:[0.0,0.02,0.0],NoGravity:1b,Glowing:1b,Item:{id:"minecraft:blue_ice",Count:1b,tag:{display:{Name:'{"text":"Everglacier","color":"aqua","italic":false}',Lore:['{"text":"A globe of ice and crystal."}','{"text":"Within its quiet stillness,"}','{"text":"thoughts are held in stasis."}']},HideFlags:1,atrium_everglacier:1b,Enchantments:[{id:"minecraft:frost_walker",lvl:1s}]}}}
execute if entity @s[scores={valid_ingredients=3..}] at @s run function atrium:formula_crafting/alchemy/alchemy_reset
execute if entity @s[scores={valid_ingredients=3..}] at @s positioned ~ ~ ~-2 run advancement grant @p[distance=..5,gamemode=!spectator] only atrium:magic/secret_ingredient
scoreboard players set @s valid_ingredients 0
