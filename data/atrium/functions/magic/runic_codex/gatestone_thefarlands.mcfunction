# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. Regardless of success or failure, reset the crafting score afterwards.
# Note: ap_baseitem handles the first item - this script will handle any remaining item checks.
#
#
# Check NORTH WEST for Essence of Anachronism
execute positioned ~-3 ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{essence_of_anachronism:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{essence_of_anachronism:1b}}}] run scoreboard players add @s codex 1
#
# Check NORTH EAST for Transmutation Powder
execute positioned ~3 ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{transmutation_powder:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{transmutation_powder:1b}}}] run scoreboard players add @s codex 1
#
# Check EAST for Item enchanted with Infinity
execute positioned ~4 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{Enchantments:[{id:"minecraft:infinity",lvl:1s}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~4 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{Enchantments:[{id:"minecraft:infinity",lvl:1s}]}}}] run scoreboard players add @s codex 1
execute positioned ~4 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:infinity",lvl:1s}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~4 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:infinity",lvl:1s}]}}}] run scoreboard players add @s codex 1
#
# Check SOUTH EAST for Essence of Anachronism
execute positioned ~2 ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{essence_of_anachronism:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{essence_of_anachronism:1b}}}] run scoreboard players add @s codex 1
#
# Check SOUTH for Holy Symbol (Taraq-Sol)
execute positioned ~ ~2 ~4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{taraq_sol_symbol:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{taraq_sol_symbol:1b}}}] run scoreboard players add @s codex 1
#
# Check SOUTH WEST for Transmutation Powder
execute positioned ~-2 ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{transmutation_powder:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{transmutation_powder:1b}}}] run scoreboard players add @s codex 1
#
# Check WEST for Rainbow Road
execute positioned ~-4 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{rainbow_road:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{rainbow_road:1b}}}] run scoreboard players add @s codex 1
#
# Check AREA for player with at least 20 Favor with Taraq-Sol.
execute at @a[distance=..15,scores={taraqsol_favor=30..}] run particle minecraft:enchanted_hit ~ ~1.5 ~ 0.25 0.25 0.25 0.1 20 normal
execute if entity @a[distance=..15,scores={taraqsol_favor=30..}] run scoreboard players add @s codex 1
#
execute if entity @s[scores={codex=8..}] at @s if entity @a[distance=..15,scores={taraqsol_favor=30..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:firework_star",Count:1b,tag:{display:{Name:'[{"text":"FAR","color":"dark_aqua","obfuscated":true},{"text":"Gatestone - The Far Lands","italic":false,"obfuscated":false},{"text":"LAN"}]',Lore:['{"text":"Although part of The Overworld,"}','{"text":"The Far Lands lies at the "}','{"text":"extreme edge of it, beyond"}','{"text":"the reach of all but the"}','{"text":"most dedicated, patient"}','{"text":"travelers. Without, that is,"}','[{"text":"the blessing of "},{"text":" Taraq-sol.","color":"yellow"}]']},HideFlags:33,gatestone_thefarlands:1b,gatestone:1b,Enchantments:[{id:"minecraft:channeling",lvl:1s}],Explosion:{Type:0}}}}
execute if entity @s[scores={codex=8..}] at @s if entity @a[distance=..15,scores={taraqsol_favor=30..}] run advancement grant @a[distance=..15] only atrium:some_assembly_required
#
# If you don't have enough Favor, tell them it needed something else.
execute if entity @s[scores={codex=8..}] at @s unless entity @a[distance=..15,scores={taraqsol_favor=30..}] as @a[distance=..15] run function atrium:misc/text/but_it_needed_something_else
execute if entity @s[scores={codex=8..}] at @s unless entity @a[distance=..15,scores={taraqsol_favor=30..}] as @a[distance=..15] run particle minecraft:smoke ~ ~1.5 ~ 0.25 0.25 0.25 0.05 20 normal
#
execute if entity @s[scores={codex=8..}] at @s run function atrium:magic/runic_codex/rc_reset
scoreboard players set @s codex 0
