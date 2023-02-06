# Teleport the player who fell below 1 in The Overworld to the same X + Z coords in The Depths, except at Y=1070.
execute as @s at @s in atrium:the_depths run tp @s[gamemode=!spectator] ~ 1070 ~
#
# Give the player the "Even Deeper Dark" advancement.
advancement grant @s[gamemode=!spectator] only atrium:depths/even_deeper_dark
# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/random_events/fall_out_of_overworld
