# Give Ghosts darkness unless they are near a player
execute as @a[gamemode=spectator] at @s unless entity @a[gamemode=survival,distance=..15] run effect give @s minecraft:blindness 3 0 true
#
# Schedule 1 second out
schedule function atrium:events/quest_events/iteration3/snowfall_5/tech/give_darkness_to_ghosts 1s