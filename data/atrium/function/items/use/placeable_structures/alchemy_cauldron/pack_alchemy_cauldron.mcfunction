# Particles!
particle minecraft:portal ~ ~0.80 ~ 0.1 0.5 0.1 0.1 50
# Sfx!
playsound minecraft:block.ender_chest.close block @a[distance=..15] ~ ~ ~ 1 0.5 0.1
#
#
# CENTER NORTH
execute positioned ~ ~ ~-2 run kill @e[distance=..1.5,type=minecraft:glow_item_frame,limit=1]
execute positioned ~ ~ ~-2 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# CENTER EAST
execute positioned ~2 ~ ~ run kill @e[distance=..1.5,type=minecraft:glow_item_frame,limit=1]
execute positioned ~2 ~ ~ run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# CENTER SOUTH
execute positioned ~ ~ ~2 run kill @e[distance=..1.5,type=minecraft:glow_item_frame,limit=1]
execute positioned ~ ~ ~2 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# CENTER WEST
execute positioned ~-2 ~ ~ run kill @e[distance=..1.5,type=minecraft:glow_item_frame,limit=1]
execute positioned ~-2 ~ ~ run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
#
setblock ~ ~ ~ minecraft:air
execute positioned ~ ~ ~ run summon item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:player_head",count:1,components:{"minecraft:lore":[{text:"Space Required:","color":"gray","italic":false},{text:"x5,y3,z5","color":"dark_gray","italic":false},{text:" "},{text:"When Placed:","color":"gray","italic":false},{text:"Generates a structure ","color":"blue","italic":false}],"minecraft:item_name":{text:"Alchemy Cauldron"},"minecraft:profile":{id:[I;-1085889659,1085099926,-1904448482,-822335963],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmZiNzA3NjhjZDMwNGQwZTQ5MzMyMGU0MjRiY2I2MTE2OTcyN2NmNjQ4YzBkNGRkZTRkZTg0ZWYyZmFjOWVlZSJ9fX0="}]},"minecraft:custom_data":{alchemy_cauldron_placer:1b}}}}
#
# If the Cooking Station Upgrade is installed, disassemble that as well.
execute if entity @s[tag=atrium_cooking_station_installed] positioned ~2 ~ ~-2 run setblock ~ ~ ~ minecraft:air
execute if entity @s[tag=atrium_cooking_station_installed] positioned ~3 ~ ~-2 run setblock ~ ~ ~ minecraft:air
execute if entity @s[tag=atrium_cooking_station_installed] positioned ~2 ~ ~-2 run kill @e[limit=1,type=minecraft:glow_item_frame,distance=..1.5,nbt={Facing:1b}]
execute if entity @s[tag=atrium_cooking_station_installed] positioned ~3 ~ ~-2 run kill @e[limit=1,type=minecraft:item_frame,distance=..1.5,nbt={Facing:1b,Item:{components:{"minecraft:custom_data":{atrium_cooking_knife:1b}}}}]
#
execute if entity @s[tag=atrium_cooking_station_installed] run summon minecraft:item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:crafting_table",count:1}}
execute if entity @s[tag=atrium_cooking_station_installed] run summon minecraft:item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:oak_stairs",count:1}}
execute if entity @s[tag=atrium_cooking_station_installed] run summon minecraft:item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:item_frame",count:1}}
execute if entity @s[tag=atrium_cooking_station_installed] run summon minecraft:item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:iron_ingot",count:1}}
#
# If the Mixology Lab Upgrade is installed, disassemble that as well.
execute if entity @s[tag=atrium_mixology_lab_installed] positioned ~-2 ~ ~-2 run setblock ~ ~ ~ minecraft:air
execute if entity @s[tag=atrium_mixology_lab_installed] positioned ~-3 ~ ~-2 run setblock ~ ~ ~ minecraft:air
execute if entity @s[tag=atrium_mixology_lab_installed] positioned ~-3 ~1 ~-2 run setblock ~ ~ ~ minecraft:air
execute if entity @s[tag=atrium_mixology_lab_installed] positioned ~-3 ~ ~-1 run setblock ~ ~ ~ minecraft:air
execute if entity @s[tag=atrium_mixology_lab_installed] positioned ~-3 ~ ~-3 run setblock ~ ~ ~ minecraft:air
execute if entity @s[tag=atrium_mixology_lab_installed] positioned ~-4 ~ ~-2 run setblock ~ ~ ~ minecraft:air
#
execute if entity @s[tag=atrium_mixology_lab_installed] run summon minecraft:item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:copper_block",count:1}}
execute if entity @s[tag=atrium_mixology_lab_installed] run summon minecraft:item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:brewing_stand",count:1}}
execute if entity @s[tag=atrium_mixology_lab_installed] run summon minecraft:item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:burn_pottery_sherd",count:1}}
execute if entity @s[tag=atrium_mixology_lab_installed] run summon minecraft:item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:brewer_pottery_sherd",count:1}}
kill @s
# Cleanup
execute as @p[gamemode=!spectator,distance=..6,nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_rod_of_relocation:1b}}}}] run function atrium:items/use/placeable_structures/rod_of_relocation_cleanup
