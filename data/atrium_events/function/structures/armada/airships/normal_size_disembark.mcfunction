# Stuff
execute as @e[type=vindicator,tag=atrium_disembarking_airship] at @s run scoreboard players add @s charge 1
#
# bridge. caret notation is a no-go since the corner of the template is determined by cardinal directions
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_north] at @s if score @s charge matches 1 run place template atrium_events:armada/airships/detail/disembark_bridge_1 ~-6 ~-5 ~7 counterclockwise_90
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_east] at @s if score @s charge matches 1 run place template atrium_events:armada/airships/detail/disembark_bridge_1 ~-7 ~-5 ~-6
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_west] at @s if score @s charge matches 1 run place template atrium_events:armada/airships/detail/disembark_bridge_1 ~7 ~-5 ~6 180
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_south] at @s if score @s charge matches 1 run place template atrium_events:armada/airships/detail/disembark_bridge_1 ~6 ~-5 ~-7 clockwise_90
# Cosmetic sound effect to signify them drinking slow falling potions
execute as @e[type=vindicator,tag=atrium_disembarking_airship] at @e[distance=..20,tag=atrium_armada_airship_crew] run playsound minecraft:entity.generic.drink hostile @a[distance=..8] ~ ~1.5 ~ 0.8 1.25 0.1
#
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_north] at @s if score @s charge matches 2 run place template atrium_events:armada/airships/detail/disembark_bridge_2 ~-6 ~-5 ~7 counterclockwise_90
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_east] at @s if score @s charge matches 2 run place template atrium_events:armada/airships/detail/disembark_bridge_2 ~-7 ~-5 ~-6
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_west] at @s if score @s charge matches 2 run place template atrium_events:armada/airships/detail/disembark_bridge_2 ~7 ~-5 ~6 180
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_south] at @s if score @s charge matches 2 run place template atrium_events:armada/airships/detail/disembark_bridge_2 ~6 ~-5 ~-7 clockwise_90
#
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_north] at @s if score @s charge matches 3 run place template atrium_events:armada/airships/detail/disembark_bridge_3 ~-6 ~-5 ~7 counterclockwise_90
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_east] at @s if score @s charge matches 3 run place template atrium_events:armada/airships/detail/disembark_bridge_3 ~-7 ~-5 ~-6
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_west] at @s if score @s charge matches 3 run place template atrium_events:armada/airships/detail/disembark_bridge_3 ~7 ~-5 ~6 180
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_south] at @s if score @s charge matches 3 run place template atrium_events:armada/airships/detail/disembark_bridge_3 ~6 ~-5 ~-7 clockwise_90
#
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_north] at @s if score @s charge matches 4 run place template atrium_events:armada/airships/detail/disembark_bridge_4 ~-6 ~-5 ~7 counterclockwise_90
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_east] at @s if score @s charge matches 4 run place template atrium_events:armada/airships/detail/disembark_bridge_4 ~-7 ~-5 ~-6
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_west] at @s if score @s charge matches 4 run place template atrium_events:armada/airships/detail/disembark_bridge_4 ~7 ~-5 ~6 180
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_south] at @s if score @s charge matches 4 run place template atrium_events:armada/airships/detail/disembark_bridge_4 ~6 ~-5 ~-7 clockwise_90
#
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_north] at @s if score @s charge matches 5 run place template atrium_events:armada/airships/detail/disembark_bridge_5 ~-6 ~-5 ~7 counterclockwise_90
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_east] at @s if score @s charge matches 5 run place template atrium_events:armada/airships/detail/disembark_bridge_5 ~-7 ~-5 ~-6
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_west] at @s if score @s charge matches 5 run place template atrium_events:armada/airships/detail/disembark_bridge_5 ~7 ~-5 ~6 180
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_south] at @s if score @s charge matches 5 run place template atrium_events:armada/airships/detail/disembark_bridge_5 ~6 ~-5 ~-7 clockwise_90
#
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_north] at @s if score @s charge matches 6 run place template atrium_events:armada/airships/detail/disembark_bridge_6 ~-6 ~-5 ~7 counterclockwise_90
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_east] at @s if score @s charge matches 6 run place template atrium_events:armada/airships/detail/disembark_bridge_6 ~-7 ~-5 ~-6
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_west] at @s if score @s charge matches 6 run place template atrium_events:armada/airships/detail/disembark_bridge_6 ~7 ~-5 ~6 180
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_south] at @s if score @s charge matches 6 run place template atrium_events:armada/airships/detail/disembark_bridge_6 ~6 ~-5 ~-7 clockwise_90
#
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_north] at @s if score @s charge matches 7 run place template atrium_events:armada/airships/detail/disembark_bridge_7 ~-6 ~-5 ~7 counterclockwise_90
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_east] at @s if score @s charge matches 7 run place template atrium_events:armada/airships/detail/disembark_bridge_7 ~-7 ~-5 ~-6
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_west] at @s if score @s charge matches 7 run place template atrium_events:armada/airships/detail/disembark_bridge_7 ~7 ~-5 ~6 180
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_south] at @s if score @s charge matches 7 run place template atrium_events:armada/airships/detail/disembark_bridge_7 ~6 ~-5 ~-7 clockwise_90
#
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_north] at @s if score @s charge matches 8 run place template atrium_events:armada/airships/detail/disembark_bridge_8 ~-6 ~-5 ~7 counterclockwise_90
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_east] at @s if score @s charge matches 8 run place template atrium_events:armada/airships/detail/disembark_bridge_8 ~-7 ~-5 ~-6
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_west] at @s if score @s charge matches 8 run place template atrium_events:armada/airships/detail/disembark_bridge_8 ~7 ~-5 ~6 180
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_south] at @s if score @s charge matches 8 run place template atrium_events:armada/airships/detail/disembark_bridge_8 ~6 ~-5 ~-7 clockwise_90
#
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_north] at @s if score @s charge matches 9 run place template atrium_events:armada/airships/detail/disembark_bridge_9 ~-6 ~-5 ~7 counterclockwise_90
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_east] at @s if score @s charge matches 9 run place template atrium_events:armada/airships/detail/disembark_bridge_9 ~-7 ~-5 ~-6
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_west] at @s if score @s charge matches 9 run place template atrium_events:armada/airships/detail/disembark_bridge_9 ~7 ~-5 ~6 180
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_south] at @s if score @s charge matches 9 run place template atrium_events:armada/airships/detail/disembark_bridge_9 ~6 ~-5 ~-7 clockwise_90
#
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_north] at @s if score @s charge matches 10 run place template atrium_events:armada/airships/detail/disembark_bridge_10 ~-7 ~-5 ~7 counterclockwise_90
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_east] at @s if score @s charge matches 10 run place template atrium_events:armada/airships/detail/disembark_bridge_10 ~-7 ~-5 ~-7
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_west] at @s if score @s charge matches 10 run place template atrium_events:armada/airships/detail/disembark_bridge_10 ~7 ~-5 ~7 180
execute as @e[type=vindicator,tag=atrium_disembarking_airship,tag=atrium_steering_south] at @s if score @s charge matches 10 run place template atrium_events:armada/airships/detail/disembark_bridge_10 ~7 ~-5 ~-7 clockwise_90
#
execute as @e[type=vindicator,tag=atrium_disembarking_airship] at @s if score @s charge matches 11.. run scoreboard players set @s charge -1
execute as @e[type=vindicator,tag=atrium_disembarking_airship] at @s if score @s charge matches -1 run function atrium_events:summon/armada/behavior_scripts/pilot_join_battle
execute as @e[type=vindicator,tag=atrium_armada_pilot] if score @s charge matches -1 run scoreboard players reset @s charge
execute at @e[type=vindicator,tag=atrium_disembarking_airship] run playsound minecraft:block.wood.place block @a[distance=..25] ~ ~ ~ 1 1 0.5
#
# Keep running every second until all currently disbarking airships are done
execute if entity @e[tag=atrium_disembarking_airship] run schedule function atrium_events:structures/armada/airships/normal_size_disembark 1s