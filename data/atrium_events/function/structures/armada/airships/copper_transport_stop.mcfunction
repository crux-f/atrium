# Disembark
execute if entity @s[tag=atrium_steering_north] run place template atrium_events:armada/airships/copper_transport_disembark_n_0 ~-6 ~-6 ~-3
execute if entity @s[tag=atrium_steering_east] run place template atrium_events:armada/airships/copper_transport_disembark_e_0 ~-21 ~-6 ~-6
execute if entity @s[tag=atrium_steering_west] run place template atrium_events:armada/airships/copper_transport_disembark_w_0 ~-3 ~-6 ~-6
execute if entity @s[tag=atrium_steering_south] run place template atrium_events:armada/airships/copper_transport_disembark_s_0 ~-6 ~-6 ~-21
# Sound
execute positioned ^ ^-5 ^-12 run playsound minecraft:block.chest.open block @a[distance=..25] ~ ~ ~ 1 0.1 0.25
#
# Prepare the crew for falling 1.5 seconds later.
schedule function atrium_events:summon/armada/behavior_scripts/pathfinding/prepare_for_falling 30t
# Remove steering tag
tag @s remove atrium_steering_airship
#
# Add disembarking tag
tag @s add atrium_disembarking_airship
#
# Start building bridges
schedule function atrium_events:structures/armada/airships/normal_size_disembark 1s