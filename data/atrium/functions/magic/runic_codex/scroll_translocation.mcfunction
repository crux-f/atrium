# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. Regardless of success or failure, reset the crafting score afterwards.
# Note: ap_baseitem handles the first item - this script will handle any remaining item checks.
#
#
# Check EAST for Paper
execute positioned ~3 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:paper",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:paper",Count:1b}}] run scoreboard players add @s codex 1
#
# Check SOUTH EAST for Paper
execute positioned ~2 ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:paper",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:paper",Count:1b}}] run scoreboard players add @s codex 1
#
# Check SOUTH for Ender Pearl
execute positioned ~ ~2 ~3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:ender_pearl",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:ender_pearl",Count:1b}}] run scoreboard players add @s codex 1
#
# Check SOUTH WEST for Item enchanted with Paper
execute positioned ~-2 ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:paper",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:paper",Count:1b}}] run scoreboard players add @s codex 1
#
# Check WEST for Paper
execute positioned ~-3 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:paper",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:paper",Count:1b}}] run scoreboard players add @s codex 1
#
execute if entity @s[scores={codex=5..}] at @s run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:flower_banner_pattern",Count:1b,tag:{display:{Name:'{"text":"Scroll of Translocation","color":"light_purple","italic":false}',Lore:['{"text":"Waystone: None","color":"gray","italic":false}','{"keybind":""}','{"text":"When in Off Hand:","color":"gray","italic":false}','{"text":"+0 Casting Power","color":"blue","italic":false}']},HideFlags:33,lv1:1b,tpscroll:1b,tpunset:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}}}
execute if entity @s[scores={codex=5..}] at @s run function atrium:magic/runic_codex/rc_reset
scoreboard players set @s codex 0
