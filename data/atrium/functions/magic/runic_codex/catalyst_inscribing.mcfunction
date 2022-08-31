# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. Regardless of success or failure, reset the crafting score afterwards.
# Note: ap_baseitem handles the first item - this script will handle any remaining item checks.
#
#
# Check NORTH WEST for Bottle o' Enchanting
execute positioned ~-2 ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] run scoreboard players add @s codex 1
#
# Check NORTH for Bottle o' Enchanting
execute positioned ~ ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] run scoreboard players add @s codex 1
#
# Check NORTH EAST for Bottle o' Enchanting
execute positioned ~2 ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] run scoreboard players add @s codex 1
#
# Check EAST for Lapis Lazuli Block
execute positioned ~3 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lapis_block",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lapis_block",Count:1b}}] run scoreboard players add @s codex 1
#
# Check SOUTH EAST for Chiseled Red Sandstone
execute positioned ~2 ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:chiseled_red_sandstone",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:chiseled_red_sandstone",Count:1b}}] run scoreboard players add @s codex 1
#
# Check SOUTH for Chiseled Quartz Block
execute positioned ~ ~2 ~3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:chiseled_quartz_block",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:chiseled_quartz_block",Count:1b}}] run scoreboard players add @s codex 1
#
# Check SOUTH WEST for Chiseled Sandstone
execute positioned ~-2 ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:chiseled_sandstone",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:chiseled_sandstone",Count:1b}}] run scoreboard players add @s codex 1
#
execute if entity @s[scores={codex=7..}] at @s run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:lapis_block",Count:1b,tag:{display:{Name:'{"text":"Enchantment Catalyst","italic":false}',Lore:['{"text":"Inscribing","color":"blue","italic":false}','{"text":"Lapis Lazuli is a useful"}','{"text":"gemstone for repeated"}','{"text":"arcane calculations."}','{"text":"When runes of longevity and"}','{"text":"complex enchantment are"}','{"text":"needed, it is the obvious"}','{"text":"solution."}']},HideFlags:1,catalyst_inscribing:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}}
#
execute if entity @s[scores={codex=7..}] at @s run function atrium:magic/runic_codex/rc_reset
scoreboard players set @s codex 0
