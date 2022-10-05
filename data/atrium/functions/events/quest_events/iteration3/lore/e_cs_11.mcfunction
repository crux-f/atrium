# Line
execute at Esthyr run tellraw @a[name=!"Esthyr",tag=event] ["",{"text":"[??","obfuscated":true,"color":"gray"},{"text":"?] ","color":"gray"},{"text":"E","strikethrough":true,"color":"light_purple"},{"text":": ","color":"gray"},{"text":"Agh","obfuscated":true,"color":"gray"},{"text":"k! "},{"text":"Ple","obfuscated":true,"color":"gray"},{"text":"a","color":"white"},{"text":"s","obfuscated":true,"color":"gray"},{"text":"e!","color":"white"}]
# Disappear
function atrium:events/quest_events/iteration3/lore/e_cs_disappear
#
# Run the next thing
schedule function atrium:events/quest_events/iteration3/lore/e_cs_12 10t