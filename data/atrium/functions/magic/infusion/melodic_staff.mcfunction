# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. Regardless of success or failure, reset the crafting score afterwards.
# Note: i_baseitem handles the first item - this script will handle any remaining item checks.
#
#
# Check CENTER NORTH for Echo Shard
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:echo_shard",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:echo_shard",Count:1b}}] run scoreboard players add @s infusion 1
# Check CENTER WEST for Air Staff (+2)
execute positioned ~-2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{airstaff:1b,lv2:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{airstaff:1b,lv2:1b}}}] run scoreboard players add @s infusion 1
# Check CENTER EAST for Earth Staff (+2)
execute positioned ~2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{earthstaff:1b,lv2:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{earthstaff:1b,lv2:1b}}}] run scoreboard players add @s infusion 1
# Check CENTER SOUTH for Infusion Catalyst (Harmonizing)
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{catalyst_harmonizing:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{catalyst_harmonizing:1b}}}] run scoreboard players add @s infusion 1
# Check SOUTH WEST for Note Block
execute positioned ~-2 ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:note_block",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:note_block",Count:1b}}] run scoreboard players add @s infusion 1
# Check SOUTH EAST for Note Block
execute positioned ~2 ~2 ~4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:note_block",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:note_block",Count:1b}}] run scoreboard players add @s infusion 1
# Check SOUTH for Goat Horn (Ponder)
execute positioned ~ ~2 ~4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:goat_horn",Count:1b,tag:{instrument:"minecraft:ponder_goat_horn"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:goat_horn",Count:1b,tag:{instrument:"minecraft:ponder_goat_horn"}}}] run scoreboard players add @s infusion 1
#
execute if entity @s[scores={infusion=5..}] at @s run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:trident",Count:1b,tag:{display:{Name:'[{"text":"M","color":"#c3c352","italic":false},{"text":"e","color":"#b9bb4e"},{"text":"l","color":"#afb34e"},{"text":"o","color":"#a4aa45"},{"text":"d","color":"#98a141"},{"text":"i","color":"#8b973b"},{"text":"c","color":"#7d8d37"},{"text":" S","color":"#6d822f"},{"text":"t","color":"#5a7528"},{"text":"a","color":"#41681F"},{"text":"f","color":"#175812"},{"text":"f","color":"#154F10"}]',Lore:['{"text":"Mending","color":"gray","italic":false}','{"text":"Component: Music Disc","color":"gray","italic":false}','{"text":"Hush","color":"#FFBFBF","italic":false}','{"text":"Inspire","color":"#FFF6A1","italic":false}','{"text":"Song","color":"dark_gray","italic":false}','{"text":" "}','{"text":"When in Off Hand:","color":"gray","italic":false}','{"text":"+3 Casting Power","color":"blue","italic":false}']},HideFlags:1,RepairCost:99,staff:1b,lv2:1b,melodicstaff:1b,weird_combo:1b,Enchantments:[{id:"minecraft:riptide",lvl:1s},{id:"minecraft:mending",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;-67466694,96486364,-1852725672,-1413614998],Slot:"mainhand"}]}}}
execute if entity @s[scores={infusion=5..}] at @s positioned ~ ~2 ~-6 run advancement grant @p[gamemode=!spectator] only atrium:magic/by_our_powers_combined
execute if entity @s[scores={infusion=5..}] at @s run function atrium:magic/infusion/infusion_reset
scoreboard players set @s infusion 0
