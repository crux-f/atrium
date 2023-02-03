# Alchemy Reset:
#
# NORTH
execute positioned ~ ~ ~-2 run data merge entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"],Item:{id:"minecraft:air"}}
execute positioned ~ ~ ~-2 run particle entity_effect ~ ~ ~ 1.000 0.141 0.078 1 0 normal
# EAST
execute positioned ~2 ~ ~ run data merge entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"],Item:{id:"minecraft:air"}}
execute positioned ~2 ~ ~ run particle entity_effect ~ ~ ~ 1.000 0.141 0.078 1 0 normal
# SOUTH
execute positioned ~ ~ ~2 run data merge entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"],Item:{id:"minecraft:air"}}
execute positioned ~ ~ ~2 run particle entity_effect ~ ~ ~ 1.000 0.141 0.078 1 0 normal
# WEST
execute positioned ~-2 ~ ~ run data merge entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"],Item:{id:"minecraft:air"}}
execute positioned ~-2 ~ ~ run particle entity_effect ~ ~ ~ 1.000 0.141 0.078 1 0 normal
#
# Particles!
particle minecraft:smoke ~ ~1 ~ 0.3 0.3 0.3 0 50 normal
# Sound!
playsound minecraft:block.brewing_stand.brew block @a[distance=..15] ~ ~ ~ 0.75 0.75 0.1
# achievement!
execute positioned ~ ~ ~-7 run advancement grant @p[distance=..5,gamemode=!spectator] only atrium:magic/magic_root
execute positioned ~ ~ ~-7 run advancement grant @p[distance=..5,gamemode=!spectator] only atrium:magic/arcane_brewery
