# Activate this script with a command block pointing at it, running this command:
# execute if entity @p[gamemode=!spectator,distance=..5,level=COST,scores{LOCATION_ws=1..}] run xp add @p -COST levels
#
# particles and sound at leave location
execute at @p[gamemode=!spectator] run particle minecraft:flash ~ ~1 ~ 0 0 0 1 30
execute at @p[gamemode=!spectator] run playsound minecraft:entity.enderman.teleport master @a[distance=..30] ~ ~ ~ 1 1 0.1
# teleport to waystone coordinates
execute as @p[gamemode=!spectator] in minecraft:overworld run tp @p[gamemode=!spectator] -1086.5 75 9.5
execute in minecraft:overworld positioned -1086.5 75 9.5 run particle minecraft:flash ~ ~1 ~ 0 0 0 1 30
execute in minecraft:overworld positioned -1086.5 75 9.5 run playsound minecraft:entity.enderman.teleport master @a[distance=..30] ~ ~ ~ 1 1 0.1
