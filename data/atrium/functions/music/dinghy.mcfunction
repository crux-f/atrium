stopsound @p record
execute as @p run playsound minecraft:atrium.dinghy record @p ~ ~ ~ 1 1 1
tag @p add dinghy
particle minecraft:note ~ ~ ~ 0.5 0.5 0.5 0.1 40
function atrium:music/stop_vanilla_music
tellraw @p {"text":"\u266b Now Playing: Dinghy \u266b","color":"dark_green"}
schedule function atrium:music/resume_vanilla_music 900s
