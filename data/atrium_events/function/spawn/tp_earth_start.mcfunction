execute in minecraft:overworld run tp @s 1135.5 113 -12550559.5 facing 1143.5 117 -12550568.5
execute in minecraft:overworld positioned 1135.5 113 -12550559.5 run particle minecraft:flash ~ ~ ~ 0 0 0 0 5
execute in minecraft:overworld positioned 1135.5 113 -12550559.5 run playsound minecraft:block.end_portal.spawn master @p[distance=..3] ~ ~ ~ 1 0.8 0.2
execute in minecraft:overworld positioned 1135.5 113 -12550559.5 run effect give @s minecraft:haste 240 0