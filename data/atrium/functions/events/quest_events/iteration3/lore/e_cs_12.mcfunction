# Appear
function atrium:events/quest_events/iteration3/lore/e_cs_appear
# Line
execute at Esthyr run tellraw @a[name=!"Esthyr",tag=event] ["",{"text":"[?","obfuscated":true,"color":"gray"},{"text":"??","color":"gray"},{"text":"] ","obfuscated":true,"color":"gray"},{"text":"E","obfuscated":true,"color":"light_purple"},{"text":": Lamp On.","obfuscated":true,"color":"gray"}]
#
# Run the next thing
schedule function atrium:events/quest_events/iteration3/lore/e_cs_13 2s