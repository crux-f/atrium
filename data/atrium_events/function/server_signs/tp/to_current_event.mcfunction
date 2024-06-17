# Teleports the user to the location of the current event (only available when the player already has the event tag).
execute unless entity @s[tag=event] run function atrium_events:server_signs/tp/no_current_event
#
execute if entity @s[tag=event] in minecraft:the_nether run tp @s -90.5 53 1361.5 facing -93 62 1349