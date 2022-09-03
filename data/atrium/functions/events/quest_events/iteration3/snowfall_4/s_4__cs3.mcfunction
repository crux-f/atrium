# Sound and text
execute at @e[tag=pyronicus_cutscene] run playsound minecraft:entity.skeleton.ambient voice @a[distance=..50,tag=event] ~ ~ ~ 1.5 0.85 1
execute at @e[tag=pyronicus_cutscene] run tellraw @a[distance=..50,tag=event] ["",{"text":"["},{"text":"???","color":"dark_red"},{"text":"]: Oho, speak of the devil."}]
# Schedule next line
schedule function atrium:events/quest_events/iteration3/snowfall_4/s_4__cs4 5s