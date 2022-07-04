# Teleport the player who fell below 1 in The Meridian to the same X + Z coords in The Overworld, except at Y=320.
execute as @s at @s in minecraft:overworld run tp @s ~ 320 ~
#
# If the player has slow falling, give them the "Golden Parachute" advancement.
advancement grant @s[predicate=atrium:effects/if_slow_falling_any] only atrium:meridian/golden_parachute
# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/random_events/fall_out_of_meridian
