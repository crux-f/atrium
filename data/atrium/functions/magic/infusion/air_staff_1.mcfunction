# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. Regardless of success or failure, reset the crafting score afterwards.
# Note: i_baseitem handles the first item - this script will handle any remaining item checks.
#
#
# Check CENTER NORTH for Lightning Rod
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lightning_rod",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lightning_rod",Count:1b}}] run scoreboard players add @s infusion 1
# Check CENTER WEST for Feather
execute positioned ~-2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:feather",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:feather",Count:1b}}] run scoreboard players add @s infusion 1
# Check CENTER EAST for Vines
execute positioned ~2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:rabbit_foot",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:rabbit_foot",Count:1b}}] run scoreboard players add @s infusion 1
# Check CENTER SOUTH for Trident
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:trident",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:trident",Count:1b}}] run scoreboard players add @s infusion 1
# Check SOUTH for Phantom Membrane
execute positioned ~ ~2 ~4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:phantom_membrane",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:phantom_membrane",Count:1b}}] run scoreboard players add @s infusion 1
#
execute if entity @s[scores={infusion=5..}] at @s run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:trident",Count:1b,tag:{display:{Name:'{"text":"Staff of Air","color":"yellow","italic":false}',Lore:['{"text":"Updraft I","color":"#FFBFBF","italic":false}','{"text":"Increase Velocity I","color":"#FFF29E","italic":false}','{"keybind":"","color":"gray","italic":false}','{"text":"When in Off Hand:","color":"gray","italic":false}','{"text":"+1 Casting Power","color":"blue","italic":false}']},HideFlags:1,RepairCost:99,airstaff:1b,staff:1b,lv1:1b,Enchantments:[{id:"minecraft:riptide",lvl:3s},{id:"minecraft:mending",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;-398377370,-1777316415,-1450025143,-577324410],Slot:"mainhand"}]}}}
execute if entity @s[scores={infusion=5..}] at @s positioned ~ ~2 ~-6 run advancement grant @p[gamemode=!spectator] only atrium:elemental_apprentice
execute if entity @s[scores={infusion=5..}] at @s run function atrium:magic/infusion/infusion_reset
scoreboard players set @s infusion 0
