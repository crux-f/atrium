# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. Regardless of success or failure, reset the crafting score afterwards.
# Note: i_baseitem handles the first item - this script will handle any remaining item checks.
#
#
# Check CENTER NORTH for Magma Block
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:magma_block",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:magma_block",Count:1b}}] run scoreboard players add @s infusion 1
# Check CENTER WEST for Earth Staff (+2)
execute positioned ~-2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{earthstaff:1b,lv2:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{earthstaff:1b,lv2:1b}}}] run scoreboard players add @s infusion 1
# Check CENTER EAST for Fire Staff (+2)
execute positioned ~2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{firestaff:1b,lv2:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{firestaff:1b,lv2:1b}}}] run scoreboard players add @s infusion 1
# Check CENTER SOUTH for Infusion Catalyst (Reverberating)
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{catalyst_reverberating:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{catalyst_reverberating:1b}}}] run scoreboard players add @s infusion 1
# Check SOUTH WEST for Obsidian
execute positioned ~-2 ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:obsidian",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:obsidian",Count:1b}}] run scoreboard players add @s infusion 1
# Check SOUTH EAST for Obisdian
execute positioned ~2 ~2 ~4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:obsidian",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:obsidian",Count:1b}}] run scoreboard players add @s infusion 1
# Check SOUTH for Tuff
execute positioned ~ ~2 ~4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:tuff",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:tuff",Count:1b}}] run scoreboard players add @s infusion 1
#
execute if entity @s[scores={infusion=5..}] at @s run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:trident",Count:1b,tag:{display:{Name:'[{"text":"M","color":"#3CDF02","italic":false},{"text":"o","color":"#4CC502"},{"text":"l","color":"#5CAB02"},{"text":"t","color":"#6C9102"},{"text":"e","color":"#7C7702"},{"text":"n","color":"#8C5D02"},{"text":" "},{"text":"S","color":"#9C4302"},{"text":"t","color":"#AC2902"},{"text":"a","color":"#AC2902"},{"text":"f","color":"#BC0F02"},{"text":"f","color":"#E30202"}]',Lore:['{"text":"Mending","color":"gray","italic":false}','{"text":"Component: Flickering Fuel","color":"gray","italic":false}','{"text":"Natural Armor II","color":"#FFBFBF","italic":false}','{"text":"Throw Flames II","color":"#FFF6A1","italic":false}','{"text":"Pyroclast","color":"dark_gray","italic":false}','{"text":" "}','{"text":"When in Off Hand:","color":"gray","italic":false}','{"text":"+3 Casting Power","color":"blue","italic":false}']},HideFlags:1,RepairCost:99,staff:1b,lv2:1b,moltenstaff:1b,earthstaff:1b,firestaff:1b,staff_combo:1b,Enchantments:[{id:"minecraft:riptide",lvl:1s},{id:"minecraft:mending",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;-67466694,96486364,-1852725672,-1413614998],Slot:"mainhand"}]}}}
execute if entity @s[scores={infusion=5..}] at @s positioned ~ ~2 ~-6 run advancement grant @p[gamemode=!spectator] only atrium:magic/by_our_powers_combined
execute if entity @s[scores={infusion=5..}] at @s run function atrium:magic/infusion/infusion_reset
scoreboard players set @s infusion 0
