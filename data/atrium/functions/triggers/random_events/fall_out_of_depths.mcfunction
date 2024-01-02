# Teleport the player who fell below 1 in The Meridian to the same X + Z coords in The Overworld, except at Y=400.
execute as @s at @s in atrium:the_abyss run tp @s[gamemode=!spectator] ~ 412.5 ~
# Give the player the "Under Pressure" advancement.
advancement grant @s only atrium:abyss/under_pressure
#
# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/random_events/fall_out_of_depths
