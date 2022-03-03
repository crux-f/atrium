#
# Check NORTH EAST for Dandelion
execute positioned ~3 ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:dandelion",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:dandelion",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check EAST for Stardust
execute positioned ~4 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{stardust:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~4 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{stardust:1b}}}] run scoreboard players add @s infusion 1
#
# Check SOUTH EAST for Dull Crystal
execute positioned ~3 ~2 ~3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{dull_crystal:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~2 ~3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{dull_crystal:1b}}}] run scoreboard players add @s infusion 1
#
# Check SOUTH for Rumbling Crystal
execute positioned ~ ~2 ~4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{rumbling_crystal:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{rumbling_crystal:1b}}}] run scoreboard players add @s infusion 1
#
# Check SOUTH WEST for Dull Crystal
execute positioned ~-3 ~2 ~3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:sunflower",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~2 ~3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:sunflower",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check WEST for Stardust
execute positioned ~-4 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{stardust:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{stardust:1b}}}] run scoreboard players add @s infusion 1
#
# Check NORTH WEST for Dull Crystal
execute positioned ~-3 ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{dull_crystal:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{dull_crystal:1b}}}] run scoreboard players add @s infusion 1
#
# Check CENTER NORTH for Lantern
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lantern",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lantern",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check CENTER EAST for Dull Crystal
execute positioned ~2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{dull_crystal:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{dull_crystal:1b}}}] run scoreboard players add @s infusion 1
#
# Check CENTER SOUTH for Lantern
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lantern",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lantern",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check CENTER WEST for Dull Crystal
execute positioned ~-2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{dull_crystal:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{dull_crystal:1b}}}] run scoreboard players add @s infusion 1
#
execute if entity @s[scores={infusion=11..}] at @s run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:yellow_stained_glass",Count:1b,eager_crystal:1b,tag:{display:{Name:'{"text":"Ambient Crystal","color":"yellow","italic":false}',Lore:['{"text":"It hums pleasantly"}','{"text":"in your hands, warm to"}','{"text":"the touch."}']},HideFlags:1,ambient_crystal:1b,Enchantments:[{id:"minecraft:protection",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:4,Operation:0,UUID:[I;-143642502,1820738489,-2017495337,1454137543],Slot:"mainhand"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:2,Operation:0,UUID:[I;-1773544178,-681160812,-1421706757,-638844973],Slot:"offhand"}]}}}
execute if entity @s[scores={infusion=11..}] at @s run function atrium:magic/infusion/infusion_reset
scoreboard players set @s infusion 0
