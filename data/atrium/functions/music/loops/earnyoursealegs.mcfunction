stopsound @a[tag=event] record
execute at @a[tag=event] run playsound minecraft:atrium.earnyoursealegs record @p ~ ~ ~ 1 1 1
execute at @a[tag=event] run tag @p add earnyoursealegs
function atrium:music/stop_vanilla_music
schedule function atrium:music/loops/earnyoursealegs 176s
