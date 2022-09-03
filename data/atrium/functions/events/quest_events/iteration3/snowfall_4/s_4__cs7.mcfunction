# Sound and text
execute at @e[tag=pyronicus_cutscene] run playsound minecraft:entity.skeleton.ambient voice @a[distance=..50,tag=event] ~ ~ ~ 1.5 0.25 1
execute at @e[tag=pyronicus_cutscene] run tellraw @a[distance=..50,tag=event] ["",{"text":"["},{"text":"Pyronicus","color":"dark_red"},{"text":"]: Prophet's Cauldron. I blew up that guy's house? You tried to kill me?"}]
# Schedule next line
schedule function atrium:events/quest_events/iteration3/snowfall_4/s_4__cs8 7s