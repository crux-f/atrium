# Station Reset:
#
# NORTH
execute positioned ~2 ~ ~-2 run data merge entity @e[type=minecraft:glow_item_frame,distance=..1,limit=1] {Facing:1b,Tags:["atrium_crafting_slot"],Item:{}}
# Particles!
execute positioned ~2 ~1 ~-2 run particle minecraft:crit ~ ~ ~ 0.3 0.3 0.3 0 15 normal
# Advancement!
execute positioned ~ ~ ~-4 run advancement grant @p[distance=..5,gamemode=!spectator] only atrium:magic/cauldron_cooking
