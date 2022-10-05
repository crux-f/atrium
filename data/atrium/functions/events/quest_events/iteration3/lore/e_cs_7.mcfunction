# Disappear
function atrium:events/quest_events/iteration3/lore/e_cs_disappear
# Line
execute at Esthyr run tellraw @a[name=!"Esthyr",tag=event] ["",{"text":"[???] ","color":"gray"},{"text":"E","obfuscated":true,"color":"light_purple"},{"text":": ","color":"gray"}]
# Run the next thing
schedule function atrium:events/quest_events/iteration3/lore/e_cs_8 6s