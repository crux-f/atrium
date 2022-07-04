stopsound @a[tag=event] record
execute at @a[tag=event] run playsound minecraft:atrium.apatheticdisplay record @p ~ ~ ~ 0.1 1 0.1
execute at @a[tag=event] run tag @p add apatheticdisplay
function atrium:music/stop_vanilla_music
schedule function atrium:music/loops/apatheticdisplay 172s
