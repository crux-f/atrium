tellraw @a[tag=event] ["",{"text":"[Maycoes]: ","color":"dark_purple"},{"text":"When my Armada first made landfall on the shores of this new world...","color":"white"}]
execute at @e[tag=event] run playsound minecraft:atrium.maycoes_talk_3 master @a[tag=event] ~ ~ ~ 0.5 0.9 1
#
schedule function atrium:events/maycoes_tm/time_stop/timestop_cutscene7 7s
#
# Maycoes: tellraw @a[tag=event] ["",{"text":"[Maycoes]: ","color":"dark_purple"},{"text":"text","color":"white"}]
# execute at @e[tag=event] run playsound minecraft:atrium.maycoes_talk_1 master @a[tag=event] ~ ~ ~ 0.5 1 1
