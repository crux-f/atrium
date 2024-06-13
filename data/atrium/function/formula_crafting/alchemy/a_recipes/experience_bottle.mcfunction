# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. 
# If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. 
# Regardless of success or failure, reset the crafting score afterwards.
# Note: alchemy_base_item handles the first item - this script will handle any remaining item checks.
#
# Check WEST for Glow Berries
execute positioned ~-2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glow_berries"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glow_berries"}}] run scoreboard players add @s valid_ingredients 1
# Check EAST for Lapis Lazuli
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lapis_lazuli"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lapis_lazuli"}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH for Thick Splash Potion
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:splash_potion",components:{"minecraft:potion_contents":{potion:"minecraft:thick"}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:splash_potion",components:{"minecraft:potion_contents":{potion:"minecraft:thick"}}}}] run scoreboard players add @s valid_ingredients 1
# Check for a nearby player (within 10 blocks) who has at least 1 level of XP
execute if entity @a[distance=..10,gamemode=!spectator,level=1..] run scoreboard players add @s valid_ingredients 1
#
execute if entity @s[scores={valid_ingredients=4..}] at @s run summon item ~ ~1 ~ {Motion:[0.0,0.02,0.0],NoGravity:1b,Glowing:1b,Item:{id:"minecraft:experience_bottle"}}
execute if entity @s[scores={valid_ingredients=4..}] at @s run function atrium:formula_crafting/alchemy/alchemy_reset
# Take 1 level of XP from a random nearby player (within 10 blocks) who has at least 1 levels of XP
execute if entity @s[scores={valid_ingredients=4..}] as @r[distance=..10,level=1..,gamemode=!spectator] run xp add @s -1 levels
scoreboard players set @s valid_ingredients 0
