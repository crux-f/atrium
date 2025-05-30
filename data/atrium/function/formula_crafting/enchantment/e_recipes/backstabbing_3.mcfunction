# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. 
# If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. 
# Regardless of success or failure, reset the crafting score afterwards.
# Note: alchemy_base_item handles the first item - this script will handle any remaining item checks.
#
# Check SOUTH for Enchantment Catalyst [Focusing]
execute positioned ~ ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_catalyst_focusing:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_catalyst_focusing:1b}}}}] run scoreboard players add @s valid_ingredients 1
#
# Check SOUTH WEST for Glow Ink Sac
execute positioned ~-2 ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glow_ink_sac",count:1}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glow_ink_sac",count:1}}] run scoreboard players add @s valid_ingredients 1
#
# Check SOUTH EAST for Glow Ink Sac
execute positioned ~2 ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glow_ink_sac",count:1}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glow_ink_sac",count:1}}] run scoreboard players add @s valid_ingredients 1
#
# Check WEST for Rotten Flesh
execute positioned ~-3 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:rotten_flesh",count:1}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:rotten_flesh",count:1}}] run scoreboard players add @s valid_ingredients 1
#
# Check EAST for Rotten Flesh
execute positioned ~3 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:rotten_flesh",count:1}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:rotten_flesh",count:1}}] run scoreboard players add @s valid_ingredients 1
#
# Check for a nearby player (within 10 blocks) who has at least 35 levels of XP
execute if entity @a[distance=..10,gamemode=!spectator,level=35..] run scoreboard players add @s valid_ingredients 1
#
execute if entity @s[scores={valid_ingredients=6..}] run summon item ~ ~0.5 ~ {Tags:["atrium_formula_product"],Motion:[0.0,0.02,0.0],NoGravity:1b,Glowing:1b,Item:{id:"minecraft:egg",count:1,components:{"minecraft:item_name":{"text":"Extremely Reportale Egg"},"minecraft:lore":[{"text":"Seems like something you"},{"text":"should report to the Admins."}],"minecraft:custom_model_data":{strings:["atrium_strange_egg"]},"minecraft:custom_data":{atrium_extremely_reportable_egg:1}}}}
execute if entity @s[scores={valid_ingredients=6..}] positioned ~ ~ ~-3 as @e[type=minecraft:glow_item_frame,distance=..1.5] run data modify entity @e[tag=atrium_formula_product,sort=nearest,limit=1] Item set from entity @s Item
execute if entity @s[scores={valid_ingredients=6..}] as @e[limit=1,sort=nearest,tag=atrium_formula_product] run data modify entity @s Item.components.minecraft:enchantments.atrium:backstabbing set value 3
execute if entity @s[scores={valid_ingredients=6..}] run function atrium:formula_crafting/enchantment/enchantment_reset
# Take 1 level of XP from a random nearby player (within 10 blocks) who has at least 35 levels of XP
execute if entity @s[scores={valid_ingredients=6..}] as @r[distance=..10,level=35..,gamemode=!spectator] run xp add @s -3 levels
# tellraw @a [{"text":"Validation reached: [","color":"gray"},{"score":{"name":"@s","objective":"valid_ingredients"},"bold":true,"color":"gray"},{"text":"]","color":"gray"}]
scoreboard players set @s valid_ingredients 0
