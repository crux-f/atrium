execute in minecraft:overworld run tp @s -89.5 67 -472 facing -89.5 60 -472
execute in minecraft:overworld positioned -89.5 67 -472 run particle minecraft:flash ~ ~ ~ 0 0 0 0 5
execute in minecraft:overworld positioned -89.5 67 -472 run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 1 0.8 0.2
execute in minecraft:overworld positioned -89.5 67 -472 run effect give @s minecraft:fire_resistance 240 0