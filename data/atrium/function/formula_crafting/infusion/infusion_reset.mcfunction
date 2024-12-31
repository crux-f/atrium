# Infusion Circle Reset:
#
# CENTER NORTH
execute positioned ~ ~ ~-2 run data merge entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"],Item:{}}
execute positioned ~ ~ ~-2 run data remove entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] Item
execute positioned ~ ~ ~-2 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# CENTER EAST
execute positioned ~2 ~ ~ run data merge entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"],Item:{}}
execute positioned ~2 ~ ~ run data remove entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] Item
execute positioned ~2 ~ ~ run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# CENTER SOUTH
execute positioned ~ ~ ~2 run data merge entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"],Item:{}}
execute positioned ~ ~ ~2 run data remove entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] Item
execute positioned ~ ~ ~2 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# CENTER WEST
execute positioned ~-2 ~ ~ run data merge entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"],Item:{}}
execute positioned ~-2 ~ ~ run data remove entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] Item
execute positioned ~-2 ~ ~ run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
#
# NORTH
execute positioned ~ ~ ~-4 run data merge entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"],Item:{}}
execute positioned ~ ~ ~-4 run data remove entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] Item
execute positioned ~ ~ ~-4 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# NORTH-EAST
execute positioned ~3 ~ ~-3 run data merge entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"],Item:{}}
execute positioned ~3 ~ ~-3 run data remove entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] Item
execute positioned ~3 ~ ~-3 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# EAST
execute positioned ~4 ~ ~ run data merge entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"],Item:{}}
execute positioned ~4 ~ ~ run data remove entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] Item
execute positioned ~4 ~ ~ run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# SOUTH-EAST
execute positioned ~3 ~ ~3 run data merge entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"],Item:{}}
execute positioned ~3 ~ ~3 run data remove entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] Item
execute positioned ~3 ~ ~3 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# SOUTH
execute positioned ~ ~ ~4 run data merge entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"],Item:{}}
execute positioned ~ ~ ~4 run data remove entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] Item
execute positioned ~ ~ ~4 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# SOUTH-WEST
execute positioned ~-3 ~ ~3 run data merge entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"],Item:{}}
execute positioned ~3 ~ ~3 run data remove entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] Item
execute positioned ~-3 ~ ~3 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# WEST
execute positioned ~-4 ~ ~ run data merge entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"],Item:{}}
execute positioned ~-4 ~ ~ run data remove entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] Item
execute positioned ~-4 ~ ~ run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# NORTH-WEST
execute positioned ~-3 ~ ~-3 run data merge entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"],Item:{}}
execute positioned ~-3 ~ ~-3 run data remove entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] Item
execute positioned ~-3 ~ ~-3 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
#
# If there is an Ender Eye in the center of the infusion circle, destroy it and summon an Endermite
execute if block ~ ~ ~ minecraft:end_portal_frame[eye=true] run playsound minecraft:entity.ender_eye.death block @a[distance=..15] ~ ~ ~ 1 0.5 0.25
execute if block ~ ~ ~ minecraft:end_portal_frame[eye=true] run summon minecraft:endermite ~ ~1 ~
execute if block ~ ~ ~ minecraft:end_portal_frame[eye=true] run setblock ~ ~ ~ minecraft:end_portal_frame[eye=false]
# Particles!
particle minecraft:portal ~ ~1 ~ 0.3 0.3 0.3 1 500 normal
# Sound!
playsound minecraft:block.beacon.activate block @a[distance=..15] ~ ~ ~ 1 1 0.1
# achievement!
execute positioned ~ ~ ~-7 run advancement grant @p[distance=..5,gamemode=!spectator] only atrium:magic/magic_root
execute positioned ~ ~ ~-7 run advancement grant @p[distance=..5,gamemode=!spectator] only atrium:magic/some_assembly_required
