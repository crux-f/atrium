# If Maycoes exists, schedule this function to run again in 2 seconds.
execute if entity @e[tag=maycoes] run schedule function atrium:events/maycoes_tm/maycoes_repeat_2s 2s
# If someone is within 5 blocks of him, teleport his marker to a random tp point 5.. away. (Maycoes TPs himself to his marker every tick in maycoes_repeat_tick).
execute at @e[tag=maycoes] run execute if entity @a[gamemode=survival,distance=..5] run function atrium:events/maycoes_tm/maycoes_teleport
#
# If Maycoes is on fire and doesn't have the firespeech tag, trigger the firespeech. 
execute if entity @e[predicate=atrium:maycoes_onfire,tag=!maycoes_firespeech] run function atrium:events/maycoes_tm/maycoes_firespeech
#
#
# Maycoes has a 35% chance to cast each cantrip (I.E. a 35% chance to cast 1, a 35% chance to cast 2, etc.) maybe too high? He could cast all of them or none of them.
#
# Cantrip: Blink (teleport even if nobody is nearby. May result in teleporting twice.
execute if predicate atrium:35_percent run function atrium:events/maycoes_tm/maycoes_teleport
# Cantrip: Hex
execute if predicate atrium:35_percent run function atrium:events/maycoes_tm/maycoes_hex
# Cantrip: Trip
execute if predicate atrium:35_percent run function atrium:events/maycoes_tm/maycoes_trip
