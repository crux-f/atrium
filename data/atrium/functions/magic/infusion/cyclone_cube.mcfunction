# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. Regardless of success or failure, reset the crafting score afterwards.
# Note: i_baseitem handles the first item - this script will handle any remaining item checks.
#
#
# Check CENTER WEST for Arrow
execute positioned ~-2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glass",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glass",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check CENTER EAST for Glass
execute positioned ~2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glass",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glass",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check EAST for Potion of Slowness IV (0:20)
execute positioned ~4 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_slowness"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~4 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_slowness"}}}] run scoreboard players add @s infusion 1
#
# Check CENTER SOUTH for Glass
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glass",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glass",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check WEST for Potion of Slowness IV (0:20)
execute positioned ~-4 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_slowness"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~ if predicate atrium:if_not_storming run function atrium:misc/text/but_it_needed_something_else
execute positioned ~-4 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_slowness"}}}] if predicate atrium:if_storming run scoreboard players add @s infusion 1
#
execute if entity @s[scores={infusion=5..}] at @s run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:white_stained_glass",Count:1b,tag:{display:{Name:'{"text":"Cyclone Cube","color":"yellow","italic":false}',Lore:['{"text":"Muted howling emits"}','{"text":"from the intense winds"}','{"text":"trapped within."}']},HideFlags:1,cyclone_cube:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:1s}]}}}
execute if entity @s[scores={infusion=5..}] at @s run function atrium:magic/infusion/infusion_reset
execute if entity @s[scores={infusion=5..}] at @s run advancement grant @a[distance=..15] only atrium:some_assembly_required
scoreboard players set @s infusion 0

