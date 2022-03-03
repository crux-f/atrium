# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. Regardless of success or failure, reset the crafting score afterwards.
# Note: i_baseitem handles the first item - this script will handle any remaining item checks.
#
#
# Check NORTH EAST for Rumbling Crystal
execute positioned ~3 ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{rumbling_crystal:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{rumbling_crystal:1b}}}] run scoreboard players add @s infusion 1
#
# Check EAST for Stardust
execute positioned ~4 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{ambient_crystal:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~4 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{ambient_crystal:1b}}}] run scoreboard players add @s infusion 1
#
# Check SOUTH EAST for Smooth Stone Slab
execute positioned ~3 ~2 ~3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:smooth_stone_slab",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~2 ~3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:smooth_stone_slab",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check SOUTH for Gravel
execute positioned ~ ~2 ~4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gravel",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gravel",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check SOUTH WEST for Smooth Stone Slab
execute positioned ~-3 ~2 ~3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:smooth_stone_slab",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~2 ~3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:smooth_stone_slab",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check WEST for Stardust
execute positioned ~-4 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{resonating_crystal:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{resonating_crystal:1b}}}] run scoreboard players add @s infusion 1
#
# Check NORTH WEST for Blooming Crystal
execute positioned ~-3 ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{blooming_crystal:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{blooming_crystal:1b}}}] run scoreboard players add @s infusion 1
#
# Check NORTH for Eager Crystal
execute positioned ~ ~2 ~-4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{eager_crystal:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{eager_crystal:1b}}}] run scoreboard players add @s infusion 1
#
# Check CENTER EAST for Dirt
execute positioned ~2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:dirt",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:dirt",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check CENTER WEST for Dirt
execute positioned ~-2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:dirt",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:dirt",Count:1b}}] run scoreboard players add @s infusion 1
#
execute if entity @s[scores={infusion=10..}] at @s run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:grass_path",Count:1b,tag:{display:{Name:'[{"text":"R","color":"red","italic":false},{"text":"a","color":"#FF2919"},{"text":"i","color":"#FF4B1F"},{"text":"n","color":"#FF7519"},{"text":"b","color":"#FF9E1F"},{"text":"o","color":"#FFF021"},{"text":"w","color":"#BCFF21"},{"text":" R","color":"#30FF21"},{"text":"o","color":"#1CFF95"},{"text":"a","color":"#1CFFE8"},{"text":"d","color":"#2197FF"}]',Lore:['{"text":"This slab of pathway"}','{"text":"has stepping stones of"}','{"text":"glimmering crystal."}']},HideFlags:1,rainbow_road:1b,Enchantments:[{id:"minecraft:power",lvl:1s}]}}}
execute if entity @s[scores={infusion=10..}] at @s run function atrium:magic/infusion/infusion_reset
scoreboard players set @s infusion 0
