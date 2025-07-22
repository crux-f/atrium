# Particles!
particle minecraft:enchant ~ ~0.80 ~ 0.1 0.5 0.1 0.1 50
# Sfx!
playsound minecraft:block.ender_chest.close block @a[distance=..15] ~ ~ ~ 1 0.5 0.1
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
execute positioned ~ ~ ~ run setblock ~ ~ ~ minecraft:air
execute positioned ~ ~ ~ run summon minecraft:item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:player_head",count:1,components:{"minecraft:lore":[{text:"Space Required:","color":"gray","italic":false},{text:"x9,y3,z7","color":"dark_gray","italic":false},{text:" "},{text:"When Placed:","color":"gray","italic":false},{text:"Generates a structure ","color":"blue","italic":false}],"minecraft:item_name":{text:"Runic Codex"},"minecraft:profile":{id:[I;453648658,-1501608406,-1743325056,-1172242773],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTUyNjgwNzc0MDkwYTVjZDFjNmZkMDgwYjZkNGFkOTkwZWViYzA0MTE4MjBlMTkyNmM5OWIyMTExZTJjYjRiNyJ9fX0="}]},"minecraft:custom_data":{runic_codex_placer:1b}}}}
#
# If the Occult Altar Upgrade is installed, disassemble that as well.
execute if entity @s[tag=atrium_occult_altar_installed] positioned ~ ~1 ~-5 run setblock ~ ~ ~ minecraft:air
execute if entity @s[tag=atrium_occult_altar_installed] positioned ~1 ~1 ~-5 run setblock ~ ~ ~ minecraft:air
execute if entity @s[tag=atrium_occult_altar_installed] positioned ~-1 ~1 ~-5 run setblock ~ ~ ~ minecraft:air
execute if entity @s[tag=atrium_occult_altar_installed] positioned ~ ~ ~-5 run setblock ~ ~ ~ minecraft:air
execute if entity @s[tag=atrium_occult_altar_installed] positioned ~1 ~ ~-5 run setblock ~ ~ ~ minecraft:air
execute if entity @s[tag=atrium_occult_altar_installed] positioned ~-1 ~ ~-5 run setblock ~ ~ ~ minecraft:air
#
execute if entity @s[tag=atrium_occult_altar_installed] run summon minecraft:item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:gray_carpet",count:1}}
execute if entity @s[tag=atrium_occult_altar_installed] run summon minecraft:item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:black_candle",count:4}}
execute if entity @s[tag=atrium_occult_altar_installed] run summon minecraft:item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:cobblestone",count:2}}
execute if entity @s[tag=atrium_occult_altar_installed] run summon minecraft:item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:redstone_block",count:1}}
# Remove entity
kill @s
# Cleanup
execute as @p[gamemode=!spectator,distance=..6,nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_rod_of_relocation:1b}}}}] run function atrium:items/use/placeable_structures/rod_of_relocation_cleanup
