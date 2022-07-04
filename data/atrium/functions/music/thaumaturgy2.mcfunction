stopsound @p record
execute as @p run playsound minecraft:atrium.thaumaturgy record @p ~ ~ ~ 1 1 1
tag @p add thaumaturgy2
particle minecraft:note ~ ~ ~ 0.5 0.5 0.5 0.1 40
function atrium:music/stop_vanilla_music
tellraw @p {"text":"\u266b Now Playing: Thaumaturgy II \u266b","color":"dark_purple"}
schedule function atrium:music/resume_vanilla_music 900s
