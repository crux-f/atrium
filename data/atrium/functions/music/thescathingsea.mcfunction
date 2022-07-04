stopsound @p record
execute as @p run playsound minecraft:atrium.thescathingsea record @p ~ ~ ~ 1 1 1
tag @p add thescathingsea
particle minecraft:note ~ ~ ~ 0.5 0.5 0.5 0.1 40
function atrium:music/stop_vanilla_music
tellraw @p {"text":"\u266b Now Playing: The Scathing Sea \u266b","color":"dark_aqua"}
schedule function atrium:music/resume_vanilla_music 900s
