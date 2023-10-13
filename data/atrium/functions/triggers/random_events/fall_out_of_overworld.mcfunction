# Teleport the player who fell below 1 in The Overworld to the same X + Z coords in The Depths, except at Y=1070.
execute at @s in atrium:the_depths run tp @s[gamemode=!spectator] ~ 1070 ~
#
# In 1 second, tunnel through the bedrock ceiling of The Depths.
tag @s add atrium_depths_burrowing
schedule function atrium:triggers/random_events/depths_burrow 10t
# Give the player the "Even Deeper Dark" advancement.
advancement grant @s[gamemode=!spectator] only atrium:depths/even_deeper_dark
# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/random_events/fall_out_of_overworld
