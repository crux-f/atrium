# Check NORTH EAST for Dirt
execute positioned ~3 ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:dirt",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:dirt",Count:1b}}] run scoreboard players add @s infusion 1
# Check EAST for Dirt
execute positioned ~4 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:dirt",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~4 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:dirt",Count:1b}}] run scoreboard players add @s infusion 1
# Check SOUTH EAST for Dirt
execute positioned ~3 ~2 ~3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:dirt",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~2 ~3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:dirt",Count:1b}}] run scoreboard players add @s infusion 1
# Check SOUTH for Dirt
execute positioned ~ ~2 ~4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:dirt",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:dirt",Count:1b}}] run scoreboard players add @s infusion 1
# Check SOUTH WEST for Dirt
execute positioned ~-3 ~2 ~3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:dirt",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~2 ~3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:dirt",Count:1b}}] run scoreboard players add @s infusion 1
# Check WEST for Dirt
execute positioned ~-4 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:dirt",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:dirt",Count:1b}}] run scoreboard players add @s infusion 1
# Check NORTH WEST for Dirt
execute positioned ~-3 ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:dirt",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:dirt",Count:1b}}] run scoreboard players add @s infusion 1
# Check NORTH for Dirt
execute positioned ~ ~2 ~-4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:dirt",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:dirt",Count:1b}}] run scoreboard players add @s infusion 1
# Check CENTER EAST for Oxeye Daisy
execute positioned ~2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:oxeye_daisy",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:oxeye_daisy",Count:1b}}] run scoreboard players add @s infusion 1
# Check CENTER SOUTH for Spacial Focus
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{spacial_focus:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{spacial_focus:1b}}}] run scoreboard players add @s infusion 1
# Check CENTER WEST for White Tulip
execute positioned ~-2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:white_tulip",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:white_tulip",Count:1b}}] run scoreboard players add @s infusion 1
#
execute if entity @s[scores={infusion=11..}] at @s run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Gatestone - The Meridian","color":"yellow","italic":false}',Lore:['{"text":"Using a Warp Gate, this stone"}','{"text":"can fling your through the"}','{"text":"cloud layer to the skylands"}','{"text":"beyond."}']},HideFlags:1,gatestone_meridian:1b,gatestone:1b,Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}}}
execute if entity @s[scores={infusion=11..}] at @s run function atrium:magic/infusion/infusion_reset
scoreboard players set @s infusion 0
