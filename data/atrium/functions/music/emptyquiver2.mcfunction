stopsound @p record
execute as @p run playsound minecraft:atrium.emptyquiver record @p ~ ~ ~ 1 1 1
tag @p add emptyquiver2
particle minecraft:note ~ ~ ~ 0.5 0.5 0.5 0.1 40
function atrium:music/stop_vanilla_music
schedule function atrium:music/resume_vanilla_music 600s
