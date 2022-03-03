stopsound @p record
execute as @p run playsound minecraft:atrium.exorsa record @p ~ ~ ~ 1 1 1
tag @p add exorsa
particle minecraft:note ~ ~ ~ 0.5 0.5 0.5 0.1 40
function atrium:music/stop_vanilla_music
tellraw @p {"text":"\u266b Now Playing: Exorsa \u266b","color":"yellow"}
schedule function atrium:music/resume_vanilla_music 900s
