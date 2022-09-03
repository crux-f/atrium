stopsound @s record
playsound minecraft:atrium.networktampering record @s ~ ~ ~ 0.45 1 0.5
tag @s add cutscene
function atrium:music/stop_vanilla_music
schedule function atrium:music/resume_vanilla_music 120s
