# Sound and text
execute at @e[tag=pyronicus_cutscene] run playsound minecraft:entity.skeleton.ambient voice @a[distance=..50,tag=event] ~ ~ ~ 1.5 0.25 1
execute at @e[tag=pyronicus_cutscene] run tellraw @a[distance=..50,tag=event] ["",{"text":"["},{"text":"Pyronicus","color":"dark_red"},{"text":"]: We have "},{"text":"far","bold":true},{"text":" bigger problems than your petty grievances."}]
# Schedule next line
schedule function atrium:events/quest_events/iteration3/snowfall_4/s_4__cs11 8s