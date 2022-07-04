# dialogue
execute at @e[tag=maycoes] run tellraw @a[distance=..100] ["",{"text":"[Maycoes]","color":"dark_purple"},{"text":": But I think you can do better.","color":"white"}]
execute at @e[tag=maycoes] run playsound minecraft:atrium.maycoes_talk_2 master @a[distance=..100] ~ ~ ~ 1 1 0.2
execute at @e[tag=maycoes] run particle minecraft:flame ~ ~1.5 ~ 0.5 1 0.5 0 60
effect give @e[tag=maycoes] minecraft:fire_resistance 999999 0

