stopsound @p record
execute as @p run playsound minecraft:atrium.brothersthree record @p ~ ~ ~ 1 1 1
tag @p add brothersthree
particle minecraft:note ~ ~ ~ 0.5 0.5 0.5 0.1 40
function atrium:music/stop_vanilla_music
schedule function atrium:music/resume_vanilla_music 900s
