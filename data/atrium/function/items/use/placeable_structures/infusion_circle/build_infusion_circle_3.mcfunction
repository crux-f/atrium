# Sfx!
playsound minecraft:entity.item_frame.place block @a[distance=..15] ~ ~ ~ 0.5 0.1 0.1
#
# NORTH
execute positioned ~ ~ ~-4 run summon glow_item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"]}
execute positioned ~ ~ ~-4 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# NORTH-EAST
execute positioned ~3 ~ ~-3 run summon glow_item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"]}
execute positioned ~3 ~ ~-3 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# EAST
execute positioned ~4 ~ ~ run summon glow_item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"]}
execute positioned ~4 ~ ~ run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# SOUTH-EAST
execute positioned ~3 ~ ~3 run summon glow_item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"]}
execute positioned ~3 ~ ~3 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# SOUTH
execute positioned ~ ~ ~4 run summon glow_item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"]}
execute positioned ~ ~ ~4 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# SOUTH-WEST
execute positioned ~-3 ~ ~3 run summon glow_item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"]}
execute positioned ~-3 ~ ~3 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# WEST
execute positioned ~-4 ~ ~ run summon glow_item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"]}
execute positioned ~-4 ~ ~ run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# NORTH-WEST
execute positioned ~-3 ~ ~-3 run summon glow_item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"]}
execute positioned ~-3 ~ ~-3 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
#
# final Stone thing
execute positioned ~ ~ ~-7 run playsound minecraft:block.stone.place block @a[distance=..5] ~ ~ ~ 0.5 1 0.1
#
setblock ~ ~2 ~-7 minecraft:stone
setblock ~ ~2 ~-8 minecraft:stone


