# Activated via pressure plate in the custom thingy. Can't be reactivated manually as the area is locked for building
execute as @p[distance=..5,gamemode=!spectator] run particle minecraft:elder_guardian ~ ~ ~ 0 0 0 0 1 force
execute as @p[distance=..5,gamemode=!spectator] run playsound minecraft:entity.elder_guardian.curse hostile @s ~ ~ ~ 0.5 0.75 0.1
#
