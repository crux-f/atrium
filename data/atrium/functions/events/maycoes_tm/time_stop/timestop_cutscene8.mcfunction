tellraw @a[tag=event] ["",{"text":"[Maycoes]: ","color":"dark_purple"},{"text":"I expected resistance.","color":"white"}]
execute at @e[tag=event] run playsound minecraft:atrium.maycoes_talk_2 master @a[tag=event] ~ ~ ~ 0.5 1 1
#
schedule function atrium:events/maycoes_tm/time_stop/timestop_cutscene9 7s
#
# Maycoes: tellraw @a[tag=event] ["",{"text":"[Maycoes]: ","color":"dark_purple"},{"text":"text","color":"white"}]
# execute at @e[tag=event] run playsound minecraft:atrium.maycoes_talk_1 master @a[tag=event] ~ ~ ~ 0.5 1 1
