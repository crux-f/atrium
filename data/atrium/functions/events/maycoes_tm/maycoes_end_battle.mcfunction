schedule clear atrium:events/maycoes_tm/maycoes_repeat_2s
schedule clear atrium:events/maycoes_tm/maycoes_repeat_25s
data merge entity @e[tag=maycoes,limit=1] {Invulnerable:1b,NoAI:1b}
function atrium:events/maycoes_tm/time_stop/time_stop_repeat
function atrium:events/maycoes_tm/time_stop/timestop_cutscene1
function atrium:music/loops/stop_maycoesbattle
execute at @e[tag=event] run playsound minecraft:atrium.achoicewasmade record @p ~ ~ ~ 0.5 1 1
