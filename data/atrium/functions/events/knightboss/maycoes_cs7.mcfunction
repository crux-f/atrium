execute at @e[team=maycoes] run tellraw @a[distance=..80] ["",{"text":"[","color":"dark_purple"},{"text":"Maycoes","underlined":true,"color":"dark_purple"},{"text":"]: ","color":"dark_purple"},{"text":"Well.","color":"white"}]
execute at @e[team=maycoes] run playsound minecraft:atrium.maycoes_talk_2 master @a[distance=..80] ~ ~ ~ 1
schedule function atrium:events/knightboss/maycoes_cs8 8s
