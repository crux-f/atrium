# Disembark
execute if entity @s[tag=atrium_steering_north] run place template atrium_events:armada/airships/basic_airship_disembark_n ~-6 ~-6 ~-21
execute if entity @s[tag=atrium_steering_east] run place template atrium_events:armada/airships/basic_airship_disembark_e ~-21 ~-6 ~-6
execute if entity @s[tag=atrium_steering_west] run place template atrium_events:armada/airships/basic_airship_disembark_w ~21 ~-6 ~6
execute if entity @s[tag=atrium_steering_south] run place template atrium_events:armada/airships/basic_airship_disembark_s ~6 ~-6 ~21
# Sound
execute positioned ^ ^-5 ^-12 run playsound minecraft:block.chest.open block @a[distance=..25] ~ ~ ~ 1 0.1 0.25
#
# Remove steering tag
tag @s remove atrium_steering_airship
#
# Add disembarking tag
tag @s add atrium_disembarking_airship
#
# Start building bridges
schedule function atrium_events:structures/armada/airships/basic_airship_disembark 1s