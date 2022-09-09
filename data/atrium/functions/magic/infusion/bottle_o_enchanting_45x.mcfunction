# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. Regardless of success or failure, reset the crafting score afterwards.
# Note: i_baseitem handles the first item - this script will handle any remaining item checks.
#
#
# Check CENTER SOUTH for Glass Bottle
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glass_bottle",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glass_bottle",Count:1b}}] run scoreboard players add @s infusion 1
# Check AREA for nearest player with at least 15 levels of XP
execute at @p[distance=..15,level=15..] run particle minecraft:enchanted_hit ~ ~1.5 ~ 0.25 0.25 0.25 0.1 20 normal
execute if entity @p[distance=..15,level=15..] run scoreboard players add @s infusion 1
#
execute if entity @s[scores={infusion=2..}] at @s run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:experience_bottle",Count:45b}}
execute if entity @s[scores={infusion=2..}] at @s run function atrium:magic/infusion/infusion_reset
execute if entity @s[scores={infusion=2..}] at @s run advancement grant @a[distance=..15] only atrium:magic/some_assembly_required
#
# If you don't have enough XP, tell them it needed something else.
execute at @p[distance=..15,level=..14] run function atrium:misc/text/but_it_needed_something_else
execute at @p[distance=..15,level=..14] run particle minecraft:smoke ~ ~1.5 ~ 0.25 0.25 0.25 0.05 20 normal
execute if entity @p[distance=..15,level=15..] run xp add @p[distance=..15] -315 points
scoreboard players set @s infusion 0
