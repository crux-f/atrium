stopsound @p record
execute as @p run playsound minecraft:atrium.thegreatdesert record @p ~ ~ ~ 1 1 1
tag @p add thegreatdesert
particle minecraft:note ~ ~ ~ 0.5 0.5 0.5 0.1 40
function atrium:music/stop_vanilla_music
tellraw @p {"text":"\u266b Now Playing: The Great Desert \u266b","color":"yellow"}
schedule function atrium:music/resume_vanilla_music 900s
