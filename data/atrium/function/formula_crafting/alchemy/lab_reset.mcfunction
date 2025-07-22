# Lab Reset:
#
# NORTH
execute positioned ~-3 ~1 ~-2 run data remove block ~ ~ ~ Items
execute positioned ~-2 ~0.85 ~-2 run particle entity_effect{color:[1.000,0.000,0.000,0.75]} ~ ~ ~ 0 0 0 1 0 normal
# Particles!
execute positioned ~-2 ~0.85 ~-2 run particle minecraft:bubble_pop ~ ~ ~ 0.3 0.3 0.3 0 5 normal
# Advancement!
execute positioned ~ ~ ~ run advancement grant @p[distance=..5,gamemode=!spectator] only atrium:magic/double_dipping
