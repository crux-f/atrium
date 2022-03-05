# I am MANUALLY spawning in maycoes_tp markers using this command:
# /summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["maycoes_tp"]}
# These will be removed by this script (as well as anything else I can think of that needs cleaning up) after the event.
kill @e[tag=maycoes_tp]
# In case I exit the maze improperly during testing (i will)
kill @e[tag=maze_return]
