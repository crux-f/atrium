# Particles!
particle minecraft:portal ~ ~0.80 ~ 0.1 0.5 0.1 0.1 50
# Sfx!
playsound minecraft:block.ender_chest.close block @a[distance=..15] ~ ~ ~ 1 0.5 0.1
#
# Remove stone thing
execute positioned ~ ~ ~-8 run playsound minecraft:block.stone.break block @a[distance=..5] ~ ~ ~ 0.5 1 0.1
#
execute positioned ~ ~ ~-4 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~ ~ ~-5 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~ ~ ~-6 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~-1 ~ ~-4 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~-1 ~ ~-5 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~-1 ~ ~-6 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~1 ~ ~-4 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~1 ~ ~-5 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~1 ~ ~-6 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~-2 ~ ~-5 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~2 ~ ~-5 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
#
execute positioned ~ ~1 ~-3 if block ~ ~ ~ minecraft:stone_button[facing=south] run setblock ~ ~ ~ minecraft:air
execute positioned ~ ~1 ~-4 if block ~ ~ ~ minecraft:chiseled_stone_bricks run setblock ~ ~ ~ minecraft:air
setblock ~ ~1 ~-5 minecraft:air
execute positioned ~ ~1 ~-6 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~-1 ~1 ~-4 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~-1 ~1 ~-5 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~1 ~1 ~-4 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~1 ~1 ~-5 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~-2 ~1 ~-5 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~2 ~1 ~-5 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
#
execute positioned ~ ~2 ~-4 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~ ~2 ~-5 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
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
execute positioned ~ ~ ~ run summon item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Alchemy Cauldron","color":"light_purple","italic":false}',Lore:['{"text":"Space Required:","color":"gray","italic":false}','{"text":"x5,y6,z8","color":"dark_gray","italic":false}','{"text":" "}','{"text":"When Placed:","color":"gray","italic":false}','{"text":"Generates a structure ","color":"blue","italic":false}']},alchemy_cauldron_placer:1b,SkullOwner:{Id:[I;-1085889659,1085099926,-1904448482,-822335963],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmZiNzA3NjhjZDMwNGQwZTQ5MzMyMGU0MjRiY2I2MTE2OTcyN2NmNjQ4YzBkNGRkZTRkZTg0ZWYyZmFjOWVlZSJ9fX0="}]}}}}}
#
# If the Cooking Station Upgrade is installed, disassemble that as well.
execute if data entity @s data.cooking_station_installed positioned ~2 ~ ~-2 run setblock ~ ~ ~ minecraft:air
execute if data entity @s data.cooking_station_installed positioned ~3 ~ ~-2 run setblock ~ ~ ~ minecraft:air
execute if data entity @s data.cooking_station_installed positioned ~2 ~ ~-2 run kill @e[limit=1,type=minecraft:glow_item_frame,distance=..1.5,nbt={Facing:1b}]
execute if data entity @s data.cooking_station_installed positioned ~3 ~ ~-2 run kill @e[limit=1,type=minecraft:item_frame,distance=..1.5,nbt={Facing:1b,Item:{tag:{atrium_cooking_knife:1b}}}]
#
execute if data entity @s data.cooking_station_installed run summon minecraft:item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:crafting_table",Count:1b}}
execute if data entity @s data.cooking_station_installed run summon minecraft:item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:oak_stairs",Count:1b}}
execute if data entity @s data.cooking_station_installed run summon minecraft:item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:item_frame",Count:1b}}
execute if data entity @s data.cooking_station_installed run summon minecraft:item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:iron_ingot",Count:1b}}
kill @s
# Cleanup
execute as @p[gamemode=!spectator,distance=..6,nbt={SelectedItem:{tag:{atrium_rod_of_relocation:1b}}}] run function atrium:items/use/placeable_structures/rod_of_relocation_cleanup
