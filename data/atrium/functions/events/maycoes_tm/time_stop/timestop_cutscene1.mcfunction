tellraw @a[tag=event] ["",{"text":"[Maycoes]: ","color":"dark_purple"},{"text":"ENOUGH.","color":"white"}]
execute at @e[tag=event] run playsound minecraft:atrium.maycoes_witherspell master @a[tag=event] ~ ~ ~ 1 1.5 1
execute at @e[tag=event] run playsound minecraft:block.end_portal.spawn master @p ~ ~ ~ 0.5 0.8 0.5
#
schedule function atrium:events/maycoes_tm/time_stop/timestop_cutscene2 10s
#
# Maycoes: tellraw @a[tag=event] ["",{"text":"[Maycoes]: ","color":"dark_purple"},{"text":"text","color":"white"}]
# execute at @e[tag=event] run playsound minecraft:atrium.maycoes_talk_1 master @a[tag=event] ~ ~ ~ 0.5 1 1
