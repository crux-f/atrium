# Activate this script with a command block pointing at it, running this command:
# execute if entity @p[distance=..5,level=COST..,scores{LOCATION_ws=1..}] run xp add @p -COST levels
#
# particles and sound at leave location
execute at @p[gamemode=!spectator] run particle minecraft:flash ~ ~1 ~ 0 0 0 1 30
execute at @p[gamemode=!spectator] run playsound minecraft:entity.enderman.teleport master @a[distance=..30] ~ ~ ~ 1 1 0.1
# teleport to waystone coordinates
execute as @p[gamemode=!spectator] in atrium:meridian run tp @s 3613.5 220 -5464.5
execute in atrium:meridian positioned 3613.5 220 -5464.5 run particle minecraft:flash ~ ~1 ~ 0 0 0 1 30
execute in atrium:meridian positioned 3613.5 220 -5464.5 run playsound minecraft:entity.enderman.teleport master @a[distance=..30] ~ ~ ~ 1 1 0.1
