execute in minecraft:overworld run tp @s 518.5 87 10.5 facing 510.5 94 18.5
execute in minecraft:overworld positioned 518.5 87 10.5 run particle minecraft:flash ~ ~ ~ 0 0 0 0 5
execute in minecraft:overworld positioned 518.5 87 10.5 run playsound minecraft:block.end_portal.spawn master @p[distance=..3] ~ ~ ~ 1 0.8 0.2
execute in minecraft:overworld positioned 518.5 87 10.5 run effect give @s minecraft:haste 240 0