# Runic Codex Reset:
#
# NORTH
execute positioned ~ ~ ~-3 run data merge entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"],Item:{id:"minecraft:air"}}
execute positioned ~ ~ ~-3 run particle minecraft:enchant ~ ~ ~ 0.1 0.5 0.1 0.1 2
# NORTH-EAST
execute positioned ~2 ~ ~-2 run data merge entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"],Item:{id:"minecraft:air"}}
execute positioned ~2 ~ ~-2 run particle minecraft:enchant ~ ~ ~ 0.1 0.5 0.1 0.1 2
# EAST
execute positioned ~4 ~ ~ run data merge entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"],Item:{id:"minecraft:air"}}
execute positioned ~4 ~ ~ run particle minecraft:enchant ~ ~ ~ 0.1 0.5 0.1 0.1 2
# SOUTH-EAST
execute positioned ~2 ~ ~2 run data merge entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"],Item:{id:"minecraft:air"}}
execute positioned ~2 ~ ~2 run particle minecraft:enchant ~ ~ ~ 0.1 0.5 0.1 0.1 2
# SOUTH
execute positioned ~ ~ ~3 run data merge entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"],Item:{id:"minecraft:air"}}
execute positioned ~ ~ ~3 run particle minecraft:enchant ~ ~ ~ 0.1 0.5 0.1 0.1 2
# SOUTH-WEST
execute positioned ~-2 ~ ~2 run data merge entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"],Item:{id:"minecraft:air"}}
execute positioned ~-2 ~ ~2 run particle minecraft:enchant ~ ~ ~ 0.1 0.5 0.1 0.1 2
# WEST
execute positioned ~-4 ~ ~ run data merge entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"],Item:{id:"minecraft:air"}}
execute positioned ~-4 ~ ~ run particle minecraft:enchant ~ ~ ~ 0.1 0.5 0.1 0.1 2
# NORTH-WEST
execute positioned ~-2 ~ ~-2 run data merge entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"],Item:{id:"minecraft:air"}}
execute positioned ~-2 ~ ~-2 run particle minecraft:enchant ~ ~ ~ 0.1 0.5 0.1 0.1 2
# Particles!
particle minecraft:enchant ~ ~3 ~ 0.3 0.3 0.3 0.1 200 normal
# Sound!
playsound minecraft:block.enchantment_table.use block @a[distance=..15] ~ ~ ~ 1 0.6 0.1
# achievement!
execute positioned ~ ~ ~-7 run advancement grant @p[distance=..5,gamemode=!spectator] only atrium:magic/magic_root
execute positioned ~ ~ ~-7 run advancement grant @p[distance=..5,gamemode=!spectator] only atrium:magic/formulaic
