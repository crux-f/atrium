tellraw @a[tag=event,distance=..8,advancements={atrium:old_server=false}] {"text":"This tome contains vast knowledge... One of the original Runic Codices. Perhaps, if this ritual site were to be repaired...?","italic":true,"color":"gray"}
tellraw @a[tag=event,distance=..8,advancements={atrium:old_server=true}] ["",{"text":"The Runic Codex of The Rambling Spire. Knowledge of many worlds is kept within this book. You turn the pages... 'Hana Valley'. 'Kelanzia'.\n\n'Atrium'.\n\n...","italic":true,"color":"gray"},{"text":"\n\n"},{"text":"The Spire is lost, but if this ritual site were to be repaired...\nPerhaps its power does not have to be.","italic":true,"color":"gray"}]
setblock ~ ~2 ~ air
setblock ~ ~ ~ air
playsound minecraft:atrium.atrocity record @a[tag=event,distance=..8,advancements={atrium:old_server=true}] ~ ~ ~ 0.5 0.5 0.5
