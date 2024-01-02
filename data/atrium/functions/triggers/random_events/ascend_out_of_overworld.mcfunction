# Teleport the player who rose above 340 in The Overworld to the same X + Z coords in The Meridian, except at Y=1.
execute as @s at @s in atrium:the_meridian run tp @s ~ 1 ~
execute as @s at @s run spreadplayers ~ ~ 0 10 false @s
#
# Give the player the "Heavens Above!" advancement.
advancement grant @s only atrium:meridian/heavens_above
# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/random_events/ascend_out_of_overworld