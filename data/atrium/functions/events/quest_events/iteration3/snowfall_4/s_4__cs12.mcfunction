# Sound and text
execute at @e[tag=pyronicus_cutscene] run playsound minecraft:entity.skeleton.converted_to_stray voice @a[distance=..50,tag=event] ~ ~ ~ 1.5 0.5 1
execute at @e[tag=pyronicus_cutscene] run tellraw @a[distance=..50,tag=event] ["",{"text":"["},{"text":"Pyronicus","color":"dark_red"},{"text":"]: Ohoho, now that is "},{"text":"RICH","bold":true},{"text":". O, how the mighty have fallen!"}]
# Schedule next line
schedule function atrium:events/quest_events/iteration3/snowfall_4/s_4__cs13 8s