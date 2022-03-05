execute at @e[team=maycoes] run tellraw @a[distance=..80] ["",{"text":"[","color":"dark_purple"},{"text":"Maycoes","underlined":true,"color":"dark_purple"},{"text":"]: ","color":"dark_purple"},{"text":"This pathetic display has gone on long enough.","color":"white"}]
execute at @e[team=maycoes] run playsound minecraft:atrium.maycoes_talk_1 master @a[distance=..80] ~ ~ ~ 1
schedule function atrium:events/knightboss/maycoes_cs2 5s
