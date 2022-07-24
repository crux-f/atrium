# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. Regardless of success or failure, reset the crafting score afterwards.
# Note: i_baseitem handles the first item - this script will handle any remaining item checks.
#
#
# Check SOUTH EAST for Block of Emerald
execute positioned ~3 ~2 ~3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald_block",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~2 ~3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald_block",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check SOUTH WEST for Block of Emerald
execute positioned ~-3 ~2 ~3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald_block",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~2 ~3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald_block",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check NORTH for Block of Emerald
execute positioned ~ ~2 ~-4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald_block",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald_block",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check CENTER SOUTH for Echo Shard
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:echo_shard",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:echo_shard",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check CENTER EAST for Spellcraft Compound
execute positioned ~2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{spellcraft_compound:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{spellcraft_compound:1b}}}] run scoreboard players add @s infusion 1
#
# Check CENTER WEST for Spellcraft Compound
execute positioned ~-2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{spellcraft_compound:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{spellcraft_compound:1b}}}] run scoreboard players add @s infusion 1
#
execute if entity @s[scores={infusion=6..}] at @s run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:emerald_block",Count:1b,tag:{display:{Name:'{"text":"Infusion Catalyst","italic":false}',Lore:['{"text":"Reverberating","color":"green","italic":false}','{"text":" "}','{"text":"Emerald can be found at"}','{"text":"great heights, and perhaps it"}','{"text":"is the oxygen deprivation,"}','{"text":"but there is a pattern of"}','{"text":"Travelers long past claiming"}','{"text":"to hear them singing."}']},HideFlags:1,catalyst_reverberating:1b,Enchantments:[{id:"minecraft:respiration",lvl:1s}]}}}
execute if entity @s[scores={infusion=6..}] at @s run function atrium:magic/infusion/infusion_reset
scoreboard players set @s infusion 0
