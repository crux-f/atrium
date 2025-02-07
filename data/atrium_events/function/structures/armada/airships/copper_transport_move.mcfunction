# Moving airships?!
#
# Place new airship exactly 1 block forward
# (don't ask me why the templates place this way, I don't understand it either. Please don't tinker with the relative coords)
execute if entity @s[tag=atrium_steering_north] run place template atrium_events:armada/airships/copper_transport_n_0 ~-6 ~-6 ~-3
execute if entity @s[tag=atrium_steering_east] run place template atrium_events:armada/airships/copper_transport_e_0 ~-21 ~-6 ~-6
execute if entity @s[tag=atrium_steering_west] run place template atrium_events:armada/airships/copper_transport_w_0 ~-3 ~-6 ~-6
execute if entity @s[tag=atrium_steering_south] run place template atrium_events:armada/airships/copper_transport_s_0 ~-6 ~-6 ~-21
# Add any raider entities on board to the ship's crew
execute at @s positioned ^ ^-5 ^-12 as @e[type=#minecraft:raiders,tag=!atrium_armada_airship_crew,distance=..20] run tag @s add atrium_armada_airship_crew
# Move pilot forward 1 block
tp @s ^ ^ ^1
# Move all members of the crew forward 1 block
execute if entity @s[tag=atrium_steering_north] positioned ^ ^-5 ^-12 run execute as @e[tag=atrium_armada_airship_crew,distance=..20,tag=!atrium_armada_pilot] at @s run tp @s ~ ~ ~-1 facing entity @n[limit=1,distance=..20,tag=atrium_armada_pilot]
execute if entity @s[tag=atrium_steering_east] positioned ^ ^-5 ^-12 run execute as @e[tag=atrium_armada_airship_crew,distance=..20,tag=!atrium_armada_pilot] at @s run tp @s ~1 ~ ~ facing entity @n[limit=1,distance=..20,tag=atrium_armada_pilot]
execute if entity @s[tag=atrium_steering_west] positioned ^ ^-5 ^-12 run execute as @e[tag=atrium_armada_airship_crew,distance=..20,tag=!atrium_armada_pilot] at @s run tp @s ~-1 ~ ~ facing entity @n[limit=1,distance=..20,tag=atrium_armada_pilot]
execute if entity @s[tag=atrium_steering_south] positioned ^ ^-5 ^-12 run execute as @e[tag=atrium_armada_airship_crew,distance=..20,tag=!atrium_armada_pilot] at @s run tp @s ~ ~ ~1 facing entity @n[limit=1,distance=..20,tag=atrium_armada_pilot]
# If the pilot is alone, try to summon reinforcements.
execute unless entity @e[tag=atrium_armada_airship_crew,distance=..20,tag=!atrium_armada_pilot] run function atrium_events:summon/armada/vehicles/crews/copper_transport_reinforce
# Where to go next?
function atrium_events:structures/armada/airships/copper_transport_steer