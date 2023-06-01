# PATREON ANOMALY: Yet Darker - Unless they’re holding a Soul Lantern, players get Darkness in light level <7 and Blindness in light level 0.
#
# Triggered once every second unless the player has a Soul Lantern in either hand.
#
# Revoke to allow re-trigger
advancement revoke @s only atrium:patreon/yet_darker
#
# Give specified effects under those conditions
execute if predicate atrium:light_check/if_light_0_to_7 run effect give @s minecraft:darkness 3 0 true
execute if predicate atrium:light_check/if_light_0 run effect give @s minecraft:blindness 3 0 true