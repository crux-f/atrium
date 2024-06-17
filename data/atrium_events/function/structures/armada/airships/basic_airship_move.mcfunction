# Moving airships?!
#
# Place new airship exactly 1 block forward
execute if entity @s[tag=atrium_steering_north] run place template atrium_events:armada/airships/basic_airship_n ~-6 ~-6 ~-21
execute if entity @s[tag=atrium_steering_east] run place template atrium_events:armada/airships/basic_airship_e ~-21 ~-6 ~-6
execute if entity @s[tag=atrium_steering_west] run place template atrium_events:armada/airships/basic_airship_w ~21 ~-6 ~6
execute if entity @s[tag=atrium_steering_south] run place template atrium_events:armada/airships/basic_airship_s ~6 ~-6 ~21
# Add any raider entities on board to the ship's crew
execute positioned ^ ^-5 ^-12 as @e[type=#minecraft:raiders,tag=!atrium_armada_airship_crew,distance=..20] run tag @s add atrium_armada_airship_crew
# Move pilot forward 1 block
tp @s ^ ^ ^1
# Move all members of the crew forward 1 block
execute if entity @s[tag=atrium_steering_north] positioned ^ ^-5 ^-12 run execute as @e[tag=atrium_armada_airship_crew,distance=..20,tag=!atrium_armada_pilot] at @s run tp @s ~ ~ ~-1 facing entity @e[limit=1,distance=..20,tag=atrium_armada_pilot]
execute if entity @s[tag=atrium_steering_east] positioned ^ ^-5 ^-12 run execute as @e[tag=atrium_armada_airship_crew,distance=..20,tag=!atrium_armada_pilot] at @s run tp @s ~1 ~ ~ facing entity @e[limit=1,distance=..20,tag=atrium_armada_pilot]
execute if entity @s[tag=atrium_steering_west] positioned ^ ^-5 ^-12 run execute as @e[tag=atrium_armada_airship_crew,distance=..20,tag=!atrium_armada_pilot] at @s run tp @s ~-1 ~ ~ facing entity @e[limit=1,distance=..20,tag=atrium_armada_pilot]
execute if entity @s[tag=atrium_steering_south] positioned ^ ^-5 ^-12 run execute as @e[tag=atrium_armada_airship_crew,distance=..20,tag=!atrium_armada_pilot] at @s run tp @s ~ ~ ~1 facing entity @e[limit=1,distance=..20,tag=atrium_armada_pilot]
#
# Where to go next?
function atrium_events:structures/armada/airships/basic_airship_steer