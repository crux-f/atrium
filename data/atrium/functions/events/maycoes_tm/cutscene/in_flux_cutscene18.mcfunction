tellraw @a[tag=event] ["",{"text":"[Maycoes]: ","color":"dark_purple"},{"text":"Pray to your gods.","color":"white"}]
execute at @e[tag=event] run playsound minecraft:atrium.maycoes_talk_2 master @a[tag=event] ~ ~ ~ 1 0.5 1
#
# Pyronicus: tellraw @a[tag=event] ["",{"text":"[Pyronicus]: ","color":"red"},{"text":"text","color":"white"}]
# execute at @e[tag=event] run playsound minecraft:entity.skeleton.ambient master @a[tag=event] ~ ~ ~ 5 0.7 1
# 
# Maycoes: tellraw @a[tag=event] ["",{"text":"[Maycoes]: ","color":"dark_purple"},{"text":"text","color":"white"}]
# execute at @e[tag=event] run playsound minecraft:atrium.maycoes_talk_1 master @a[tag=event] ~ ~ ~ 0.5 1 1
#
# Necronicus: tellraw @a[tag=event] ["",{"text":"[Mysterious Figure]: ","color":"dark_red"},{"text":"text","color":"white"}]
# execute at @e[tag=event] run playsound minecraft:entity.wither_skeleton.ambient master @a[tag=event] ~ ~ ~ 3 0.8 1
