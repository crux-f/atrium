# Grant advancements
advancement grant @p[distance=..10,gamemode=!spectator] only atrium:but_you_refused
advancement grant @p[distance=..10,gamemode=!spectator,advancements={atrium:air_start=true}] only atrium:air_memory
advancement grant @p[distance=..10,gamemode=!spectator,advancements={atrium:earth_start=true}] only atrium:earth_memory
advancement grant @p[distance=..10,gamemode=!spectator,advancements={atrium:fire_start=true}] only atrium:fire_memory
advancement grant @p[distance=..10,gamemode=!spectator,advancements={atrium:water_start=true}] only atrium:water_memory
# grant player effect
effect give @p[distance=..10,gamemode=!spectator,advancements={atrium:air_start=true}] minecraft:slow_falling 240 0
effect give @p[distance=..10,gamemode=!spectator,advancements={atrium:earth_start=true}] minecraft:haste 240 0
effect give @p[distance=..10,gamemode=!spectator,advancements={atrium:fire_start=true}] minecraft:fire_resistance 240 0
effect give @p[distance=..10,gamemode=!spectator,advancements={atrium:water_start=true}] minecraft:water_breathing 240 0
# teleport player to their chosen spawn
execute as @p[distance=..10,gamemode=!spectator] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 5 force
execute as @p[distance=..10,gamemode=!spectator] at @s run playsound minecraft:block.portal.trigger master @s ~ ~ ~ 0.25 0.75 0.1
execute as @p[distance=..10,gamemode=!spectator,advancements={atrium:air_start=true}] in minecraft:overworld run tp @s 35658.5 400 -3044.5
execute as @p[distance=..10,gamemode=!spectator,advancements={atrium:earth_start=true}] in minecraft:overworld run tp @s 37146.5 29 -3336.5
execute as @p[distance=..10,gamemode=!spectator,advancements={atrium:fire_start=true}] in minecraft:overworld run tp @s 35922.5 76 -4096.5
execute as @p[distance=..10,gamemode=!spectator,advancements={atrium:water_start=true}] in minecraft:overworld run tp @s 37685.5 11 -2876.5
