execute at @e[team=maycoes] run tellraw @a[distance=..80] ["",{"text":"[","color":"dark_purple"},{"text":"Maycoes","underlined":true,"color":"dark_purple"},{"text":"]: ","color":"dark_purple"},{"text":"Your pride?","color":"white"}]
execute at @e[team=maycoes] run playsound minecraft:atrium.maycoes_talk_1 master @a[distance=..80] ~ ~ ~ 1
schedule function atrium:events/knightboss/maycoes_cs6 6s
