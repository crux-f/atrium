execute at @e[team=maycoes] run tellraw @a[distance=..80] ["",{"text":"[","color":"dark_purple"},{"text":"Maycoes","underlined":true,"color":"dark_purple"},{"text":"]: ","color":"dark_purple"},{"text":"test","obfuscated":true,"color":"light_purple"},{"text":"primae formae extrahere tuam perniciem aetate defectum"},{"text":"test","obfuscated":true,"color":"light_purple"}]
execute at @e[team=maycoes] run playsound minecraft:atrium.maycoes_witherspell master @a[distance=..80] ~ ~ ~ 1
schedule function atrium:events/knightboss/maycoes_witherspell 5s
