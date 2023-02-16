# Particles!
particle minecraft:portal ~ ~0.80 ~ 0.1 0.5 0.1 0.1 50
# Sfx!
playsound minecraft:block.ender_chest.close block @a[distance=..15] ~ ~ ~ 1 0.5 0.1
#
# Remove stone thing
execute positioned ~ ~ ~-8 run playsound minecraft:block.stone.break block @a[distance=..5] ~ ~ ~ 0.5 1 0.1
#
execute positioned ~ ~ ~-7 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~ ~ ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~ ~ ~-9 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~-1 ~ ~-7 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~-1 ~ ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~-1 ~ ~-9 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~1 ~ ~-7 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~1 ~ ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~1 ~ ~-9 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~-2 ~ ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~2 ~ ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
#
# Remove all crafting slots
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
execute positioned ~ ~1 ~-6 if block ~ ~ ~ minecraft:stone_button run setblock ~ ~ ~ minecraft:air
execute positioned ~ ~1 ~-7 if block ~ ~ ~ minecraft:chiseled_stone_bricks run setblock ~ ~ ~ minecraft:air
setblock ~ ~1 ~-8 minecraft:air
execute positioned ~ ~1 ~-9 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~-1 ~1 ~-7 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~-1 ~1 ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~1 ~1 ~-7 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~1 ~1 ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~-2 ~1 ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~2 ~1 ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
#
# NORTH
execute positioned ~ ~ ~-4 run kill @e[distance=..1.5,type=minecraft:glow_item_frame,limit=1]
execute positioned ~ ~ ~-4 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# NORTH-EAST
execute positioned ~3 ~ ~-3 run kill @e[distance=..1.5,type=minecraft:glow_item_frame,limit=1]
execute positioned ~3 ~ ~-3 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# EAST
execute positioned ~4 ~ ~ run kill @e[distance=..1.5,type=minecraft:glow_item_frame,limit=1]
execute positioned ~4 ~ ~ run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# SOUTH-EAST
execute positioned ~3 ~ ~3 run kill @e[distance=..1.5,type=minecraft:glow_item_frame,limit=1]
execute positioned ~3 ~ ~3 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# SOUTH
execute positioned ~ ~ ~4 run kill @e[distance=..1.5,type=minecraft:glow_item_frame,limit=1]
execute positioned ~ ~ ~4 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# SOUTH-WEST
execute positioned ~-3 ~ ~3 run kill @e[distance=..1.5,type=minecraft:glow_item_frame,limit=1]
execute positioned ~-3 ~ ~3 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# WEST
execute positioned ~-4 ~ ~ run kill @e[distance=..1.5,type=minecraft:glow_item_frame,limit=1]
execute positioned ~-4 ~ ~ run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# NORTH-WEST
execute positioned ~-3 ~ ~-3 run kill @e[distance=..1.5,type=minecraft:glow_item_frame,limit=1]
execute positioned ~-3 ~ ~-3 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
#
execute positioned ~ ~2 ~-7 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~ ~2 ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
#
setblock ~ ~ ~ minecraft:air
execute positioned ~ ~ ~ run summon item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Infusion Circle","color":"light_purple","italic":false}',Lore:['{"text":"Space Required:","color":"gray","italic":false}','{"text":"x9,y5,z11","color":"dark_gray","italic":false}','{"text":" "}','{"text":"When Placed:","color":"gray","italic":false}','{"text":"Generates a structure ","color":"blue","italic":false}']},infusion_circle_placer:1b,SkullOwner:{Id:[I;-510246894,-974372697,-1324757754,-2046207321],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTIyNzYzMDkzNzc0NjkzYjI2MzkyNzhhMWMyYzY5OGFkMTFkYjQ5Mjg5NmU5YmYxNjcxNGQ4NTdlOThjYTFkZCJ9fX0="}]}}}}}
#
kill @s
# Cleanup
execute as @p[gamemode=!spectator,distance=..6,nbt={SelectedItem:{tag:{atrium_rod_of_relocation:1b}}}] run function atrium:items/use/placeable_structures/rod_of_relocation_cleanup