# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. Regardless of success or failure, reset the crafting score afterwards.
# Note: ap_baseitem handles the first item - this script will handle any remaining item checks.
#
#
# Check NORTH WEST for Smooth Stone
execute positioned ~-2 ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:smooth_stone",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:smooth_stone",Count:1b}}] run scoreboard players add @s codex 1
#
# Check NORTH for Bottle o' Enchanting
execute positioned ~ ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] run scoreboard players add @s codex 1
#
# Check EAST for Bottle o' Enchanting
execute positioned ~4 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~4 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] run scoreboard players add @s codex 1
#
# Check SOUTH EAST for Essence of Anachronism
execute positioned ~2 ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:smooth_stone",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:smooth_stone",Count:1b}}] run scoreboard players add @s codex 1
#
# Check SOUTH for Enchantment Catalyst (Inscribing)
execute positioned ~ ~2 ~4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{catalyst_inscribe:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{catalyst_inscribe:1b}}}] run scoreboard players add @s codex 1
#
# Check SOUTH WEST for Smooth Stone
execute positioned ~-2 ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:smooth_stone",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:smooth_stone",Count:1b}}] run scoreboard players add @s codex 1
#
# Check WEST for Bottle o' Enchanting
execute positioned ~-4 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] run scoreboard players add @s codex 1
#
execute if entity @s[scores={codex=7..}] at @s run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:firework_star",Count:1b,tag:{display:{Name:'{"text":"Forgotten Runestone","color":"yellow","italic":false}',Lore:['{"text":"Your hands ache with the"}','{"text":"memory of carving the"}','{"text":"symbols etched into it,"}','{"text":"but you no longer remember"}','{"text":"doing it."}']},HideFlags:33,forgotten_runestone:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],Explosion:{Type:1,Trail:1b,Colors:[I;11206400],FadeColors:[I;16775224]}}}}
execute if entity @s[scores={codex=7..}] at @s run function atrium:magic/runic_codex/rc_reset
scoreboard players set @s codex 0
