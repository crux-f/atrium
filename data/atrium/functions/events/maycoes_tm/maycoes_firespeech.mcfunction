# add tag so this doesnt keep happening
tag @e[tag=maycoes] add maycoes_firespeech
# dialogue, schedule end script
execute at @e[tag=maycoes] run tellraw @a[distance=..100] ["",{"text":"[Maycoes]","color":"dark_purple"},{"text":": Ah, magical flames. How inspired. ","color":"white"}]
execute at @e[tag=maycoes] run playsound minecraft:atrium.maycoes_talk_1 master @a[distance=..100] ~ ~ ~ 1 1 0.2
schedule function atrium:events/maycoes_tm/maycoes_firespeech_end 3s
