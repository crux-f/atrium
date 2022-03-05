execute at @e[team=maycoes] run tellraw @a[distance=..80] ["",{"text":"[","color":"dark_purple"},{"text":"Maycoes","underlined":true,"color":"dark_purple"},{"text":"]: ","color":"dark_purple"},{"text":"You could have overrun this collection of sniveling wretches with the forces I entrusted to you...","color":"white"}]
execute at @e[team=maycoes] run playsound minecraft:atrium.maycoes_talk_3 master @a[distance=..80] ~ ~ ~ 1
schedule function atrium:events/knightboss/maycoes_cs3 8s
