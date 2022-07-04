execute as @p[x=69,y=67,z=-363,distance=..5,scores={chorus_favor=30}] in atrium:between_worlds run tp @s 999 99 999
execute in atrium:between_worlds run tag @p[distance=..5,scores={chorus_favor=30},x=999,y=99,z=999] add chorus_q
execute in atrium:between_worlds run title @p[distance=..5,scores={chorus_favor=30},x=999,y=99,z=999] title {"text":"\u06de IMAGINATION \u06de","bold":true,"color":"light_purple"}
execute in atrium:between_worlds run title @p[distance=..5,scores={chorus_favor=30},x=999,y=99,z=999] subtitle ["",{"text":"\u06de ","bold":true,"color":"light_purple"},{"text":"CREATE SOMETHING OUT OF NOTHING ","color":"light_purple"},{"text":"\u06de","bold":true,"color":"light_purple"}]
execute in atrium:between_worlds run playsound minecraft:block.end_portal.spawn master @p[distance=..5,scores={chorus_favor=30},x=999,y=99,z=999] ~ ~ ~ 0.8 0.8 0.5
