# Remove event tag.
tag @s remove event
#
# Give the player the prerequisite advancements
advancement grant @s only atrium:events_root
advancement grant @s only atrium:events_explanation
advancement grant @s only atrium:wevents_explanation
#
# Give the player the advancement for this year's events.
advancement grant @s only atrium_events:events_2023
#
# Expand the world border.
execute in minecraft:overworld run worldborder add 425 300
execute in atrium:the_depths run worldborder add 425 300
execute in atrium:the_meridian run worldborder add 425 300
# Note: for Iteration 4, initial world border size will be 850.