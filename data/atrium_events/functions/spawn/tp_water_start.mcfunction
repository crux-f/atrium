execute in minecraft:overworld run tp @s 53 60 260 facing 53 62 264
execute in minecraft:overworld positioned 53 60 260 run particle minecraft:flash ~ ~ ~ 0 0 0 0 5
execute in minecraft:overworld positioned 53 60 260 run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 1 0.8 0.2
execute in minecraft:overworld positioned 53 60 260 run effect give @s minecraft:water_breathing 240 0