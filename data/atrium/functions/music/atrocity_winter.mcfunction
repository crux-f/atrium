stopsound @p record
execute as @p run playsound minecraft:atrium.snowflakesinatrocity record @p ~ ~ ~ 1 1 1
tag @p add atrocity
particle minecraft:note ~ ~ ~ 0.5 0.5 0.5 0.1 40
function atrium:music/stop_vanilla_music
tellraw @p {"text":"\u266b Now Playing: Snowflakes in Atrocity \u266b","color":"aqua"}
schedule function atrium:music/resume_vanilla_music 900s
