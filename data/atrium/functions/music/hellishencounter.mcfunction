stopsound @p record
execute as @p run playsound minecraft:atrium.hellishencounter record @p ~ ~ ~ 1 1 1
tag @p add hellishencounter
particle minecraft:note ~ ~ ~ 0.5 0.5 0.5 0.1 40
function atrium:music/stop_vanilla_music
schedule function atrium:music/resume_vanilla_music 900s
