execute at @p[gamemode=!spectator,distance=..10] run particle minecraft:flash ~ ~2 ~ 0 0 0 0 5
playsound minecraft:block.end_portal.spawn master @p[distance=..10,gamemode=!spectator] ~ ~ ~ 1 0.8 0.2
execute as @p[distance=..10,gamemode=!spectator] in atrium:between_worlds run tp @s 36731.5 162 -3225.5
