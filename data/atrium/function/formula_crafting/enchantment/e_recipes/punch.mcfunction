# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. 
# If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. 
# Regardless of success or failure, reset the crafting score afterwards.
# Note: alchemy_base_item handles the first item - this script will handle any remaining item checks.
#
# Check NORTH for Book
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:book",count:1}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:book",count:1}}] run scoreboard players add @s valid_ingredients 1
#
# Check NORTH WEST for Piston
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:piston",count:1}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:piston",count:1}}] run scoreboard players add @s valid_ingredients 1
#
# Check NORTH EAST for Piston
execute positioned ~2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:piston",count:1}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:piston",count:1}}] run scoreboard players add @s valid_ingredients 1
#
# Check EAST for Egg
execute positioned ~4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:egg",count:1}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:egg",count:1}}] run scoreboard players add @s valid_ingredients 1
#
# Check SOUTH WEST for Brick
execute positioned ~-2 ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:brick",count:1}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:brick",count:1}}] run scoreboard players add @s valid_ingredients 1
#
# Check SOUTH EAST for Brick
execute positioned ~2 ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:brick",count:1}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:brick",count:1}}] run scoreboard players add @s valid_ingredients 1
#
# Check for a nearby player (within 10 blocks) who has at least 12 levels of XP
execute if entity @a[distance=..10,gamemode=!spectator,level=12..] run scoreboard players add @s valid_ingredients 1
#
execute if entity @s[scores={valid_ingredients=7..}] run summon item ~ ~0.5 ~ {Tags:["atrium_formula_product"],Motion:[0.0,0.02,0.0],NoGravity:1b,Glowing:1b,Item:{id:"minecraft:egg",count:1,components:{"minecraft:item_name":{"text":"Extremely Reportale Egg"},"minecraft:lore":[{"text":"Seems like something you"},{"text":"should report to the Admins."}],"minecraft:custom_model_data":{strings:["atrium_strange_egg"]},"minecraft:custom_data":{atrium_extremely_reportable_egg:1}}}}
execute if entity @s[scores={valid_ingredients=7..}] at @s run item replace entity @n[type=item,tag=atrium_formula_product,distance=..7] container.0 with minecraft:enchanted_book[minecraft:stored_enchantments={"minecraft:punch":1}]
execute if entity @s[scores={valid_ingredients=7..}] run function atrium:formula_crafting/enchantment/enchantment_reset
execute if entity @s[scores={valid_ingredients=7..}] positioned ~ ~ ~-7 run advancement grant @p[distance=..5,gamemode=!spectator] only atrium:magic/enchanter_ii
# Take 4 levels of XP from a random nearby player (within 10 blocks) who has at least 4 levels of XP
execute if entity @s[scores={valid_ingredients=7..}] as @r[distance=..10,level=12..,gamemode=!spectator] run xp add @s -4 levels
# tellraw @a [{"text":"Validation reached: [","color":"gray"},{"score":{"name":"@s","objective":"valid_ingredients"},"bold":true,"color":"gray"},{"text":"]","color":"gray"}]
scoreboard players set @s valid_ingredients 0
