# Particles!
particle minecraft:enchant ~ ~0.80 ~ 0.1 0.5 0.1 0.1 50
# Sfx!
playsound minecraft:block.ender_chest.close block @a[distance=..15] ~ ~ ~ 1 0.5 0.1
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
execute positioned ~ ~1 ~-6 if block ~ ~ ~ minecraft:stone_button[facing=south] run setblock ~ ~ ~ minecraft:air
execute positioned ~ ~1 ~-7 if block ~ ~ ~ minecraft:chiseled_stone_bricks run setblock ~ ~ ~ minecraft:air
setblock ~ ~1 ~-8 minecraft:air
execute positioned ~ ~1 ~-9 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~-1 ~1 ~-7 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~-1 ~1 ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~1 ~1 ~-7 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~1 ~1 ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~-2 ~1 ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~2 ~1 ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~ ~2 ~-7 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~ ~2 ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
#
# Sfx!
playsound minecraft:entity.item_frame.break block @a[distance=..15] ~ ~ ~ 0.5 0.1 0.1
#
# NORTH
execute positioned ~ ~ ~-3 run kill @e[distance=..1.5,type=minecraft:glow_item_frame,limit=1]
execute positioned ~ ~ ~-3 run particle minecraft:enchanted_hit ~ ~ ~ 0.1 0.5 0.1 0.1 15
# NORTH-EAST
execute positioned ~2 ~ ~-2 run kill @e[distance=..1.5,type=minecraft:glow_item_frame,limit=1]
execute positioned ~2 ~ ~-2 run particle minecraft:enchanted_hit ~ ~ ~ 0.1 0.5 0.1 0.1 15
# EAST
execute positioned ~4 ~ ~ run kill @e[distance=..1.5,type=minecraft:glow_item_frame,limit=1]
execute positioned ~4 ~ ~ run particle minecraft:enchanted_hit ~ ~ ~ 0.1 0.5 0.1 0.1 15
# SOUTH-EAST
execute positioned ~2 ~ ~2 run kill @e[distance=..1.5,type=minecraft:glow_item_frame,limit=1]
execute positioned ~2 ~ ~2 run particle minecraft:enchanted_hit ~ ~ ~ 0.1 0.5 0.1 0.1 15
# SOUTH
execute positioned ~ ~ ~3 run kill @e[distance=..1.5,type=minecraft:glow_item_frame,limit=1]
execute positioned ~ ~ ~3 run particle minecraft:enchanted_hit ~ ~ ~ 0.1 0.5 0.1 0.1 15
# SOUTH-WEST
execute positioned ~-2 ~ ~2 run kill @e[distance=..1.5,type=minecraft:glow_item_frame,limit=1]
execute positioned ~-2 ~ ~2 run particle minecraft:enchanted_hit ~ ~ ~ 0.1 0.5 0.1 0.1 15
# WEST
execute positioned ~-4 ~ ~ run kill @e[distance=..1.5,type=minecraft:glow_item_frame,limit=1]
execute positioned ~-4 ~ ~ run particle minecraft:enchanted_hit ~ ~ ~ 0.1 0.5 0.1 0.1 15
# NORTH-WEST
execute positioned ~-2 ~ ~-2 run kill @e[distance=..1.5,type=minecraft:glow_item_frame,limit=1]
execute positioned ~-2 ~ ~-2 run particle minecraft:enchanted_hit ~ ~ ~ 0.1 0.5 0.1 0.1 15
#
#
execute positioned ~ ~ ~ run setblock ~ ~ ~ minecraft:air
execute positioned ~ ~ ~ run summon item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Runic Codex","color":"light_purple","italic":false}',Lore:['{"text":"Space Required:","color":"gray","italic":false}','{"text":"x9,y6,z10","color":"dark_gray","italic":false}','{"text":" "}','{"text":"When Placed:","color":"gray","italic":false}','{"text":"Generates a structure ","color":"blue","italic":false}']},runic_codex_placer:1b,SkullOwner:{Id:[I;453648658,-1501608406,-1743325056,-1172242773],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTUyNjgwNzc0MDkwYTVjZDFjNmZkMDgwYjZkNGFkOTkwZWViYzA0MTE4MjBlMTkyNmM5OWIyMTExZTJjYjRiNyJ9fX0="}]}}}}}
#
kill @s
