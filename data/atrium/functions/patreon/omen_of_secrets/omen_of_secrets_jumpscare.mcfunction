# Activated 1 second after the tp
execute in atrium:between_worlds positioned 999 99 999 as @a[distance=..5,gamemode=!spectator] run particle minecraft:elder_guardian ~ ~ ~ 0 0 0 0 1 force
execute in atrium:between_worlds positioned 999 99 999 as @a[distance=..5,gamemode=!spectator] run playsound minecraft:entity.elder_guardian.curse hostile @s ~ ~ ~ 0.5 0.75 0.1
#
