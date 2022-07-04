# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. Regardless of success or failure, reset the crafting score afterwards.
# Note: i_baseitem handles the first item - this script will handle any remaining item checks.
#
#
# Check CENTER NORTH for Ender Pearl
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:ender_pearl",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:ender_pearl",Count:1b}}] run scoreboard players add @s infusion 1
# Check CENTER WEST for Redstone
execute positioned ~-2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone",Count:1b}}] run scoreboard players add @s infusion 1
# Check CENTER EAST for Redstone
execute positioned ~2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone",Count:1b}}] run scoreboard players add @s infusion 1
#
execute if entity @s[scores={infusion=3..}] at @s run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:diamond",Count:1b,tag:{display:{Name:'{"text":"Spacial Focus","color":"blue","italic":false}',Lore:['{"text":"This cut diamond is"}','{"text":"is imbued with the ability"}','{"text":"to channel and absorb"}','{"text":"spacial signatures."}']},HideFlags:1,spacial_focus:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}}
execute if entity @s[scores={infusion=3..}] at @s positioned ~ ~2 ~-6 run advancement grant @p[gamemode=!spectator] only atrium:spacial_awareness
execute if entity @s[scores={infusion=3..}] at @s run function atrium:magic/infusion/infusion_reset
scoreboard players set @s infusion 0
