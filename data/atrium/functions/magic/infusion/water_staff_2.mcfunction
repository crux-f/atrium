# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. Regardless of success or failure, reset the crafting score afterwards.
# Note: i_baseitem handles the first item - this script will handle any remaining item checks.
#
#
# Check CENTER NORTH for Submerged Gemstone
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{submerged_gemstone:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{submerged_gemstone:1b}}}] run scoreboard players add @s infusion 1
# Check CENTER WEST for Spellcraft Compound
execute positioned ~-2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{spellcraft_compound:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{spellcraft_compound:1b}}}] run scoreboard players add @s infusion 1
# Check CENTER EAST for Spellcraft Compound
execute positioned ~2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{spellcraft_compound:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{spellcraft_compound:1b}}}] run scoreboard players add @s infusion 1
# Check CENTER SOUTH for Water Staff
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{waterstaff:1b,lv1:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{waterstaff:1b,lv1:1b}}}] run scoreboard players add @s infusion 1
# Check SOUTH for Mysterious Fish
execute positioned ~ ~2 ~4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{mysterious_fish:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{mysterious_fish:1b}}}] run scoreboard players add @s infusion 1
#
execute if entity @s[scores={infusion=5..}] at @s run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:trident",Count:1b,tag:{display:{Name:'{"text":"Staff of Water","color":"dark_cyan","italic":false}',Lore:['{"text":"Nourishment II","color":"#FFBFBF","italic":false}','{"text":"Extinguish II","color":"#FFF29E","italic":false}','{"keybind":"","italic":false}','{"text":"When in Off Hand:","color":"gray","italic":false}','{"text":"+2 Casting Power","color":"blue","italic":false}']},HideFlags:1,RepairCost:99,waterstaff:1b,staff:1b,lv2:1b,Enchantments:[{id:"minecraft:riptide",lvl:4s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;391947285,319243430,-1723587974,-418005052],Slot:"mainhand"}]}}}
execute if entity @s[scores={infusion=5..}] at @s positioned ~ ~2 ~-6 run advancement grant @p[gamemode=!spectator] only atrium:elemental_apprentice
execute if entity @s[scores={infusion=5..}] at @s run function atrium:magic/infusion/infusion_reset
scoreboard players set @s infusion 0
