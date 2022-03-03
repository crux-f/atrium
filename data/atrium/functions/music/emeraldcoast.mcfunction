stopsound @p record
execute as @p run playsound minecraft:atrium.emeraldcoast record @p ~ ~ ~ 1 1 1
tag @p add emeraldcoast
particle minecraft:note ~ ~ ~ 0.5 0.5 0.5 0.1 40
function atrium:music/stop_vanilla_music
tellraw @p {"text":"\u266b Now Playing: Emerald Coast \u266b","color":"green"}
schedule function atrium:music/resume_vanilla_music 900s
