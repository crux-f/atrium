# Sound and text
execute at @e[tag=pyronicus_cutscene] run playsound minecraft:entity.skeleton.ambient voice @a[distance=..50,tag=event] ~ ~ ~ 1.5 1.25 1
# Special: players with "Viator" get glowing for 10 seconds
effect give @a[advancements={atrium:old_server=true}] glowing 10 0 false
#
execute at @e[tag=pyronicus_cutscene] run tellraw @a[distance=..50,tag=event] ["",{"text":"["},{"text":"Pyronicus","color":"dark_red"},{"text":"]: The Viators of Exorsa, caught unawares!"}]
# Schedule next line
schedule function atrium:events/quest_events/iteration3/snowfall_4/s_4__cs14 10s