execute in minecraft:overworld run tp @s 876.5 288 -12550561.5 facing 868.5 292 -12550562.5
execute in minecraft:overworld positioned 876.5 288 -12550561.5 run particle minecraft:flash ~ ~ ~ 0 0 0 0 5
execute in minecraft:overworld positioned 876.5 288 -12550561.5 run playsound minecraft:block.end_portal.spawn master @p[distance=..3] ~ ~ ~ 1 0.8 0.2
effect give @s minecraft:slow_falling 240 0