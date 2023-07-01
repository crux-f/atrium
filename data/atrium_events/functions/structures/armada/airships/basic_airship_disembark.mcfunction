# Stuff
execute as @e[tag=atrium_disembarking_airship] at @s run scoreboard players add @s charge 1
#
# bridge
execute as @e[tag=atrium_disembarking_airship] at @s if score @s charge matches 1 run place template atrium_events:armada/airships/detail/disembark_bridge_1 ^6 ^-5 ^-7
execute as @e[tag=atrium_disembarking_airship] at @s if score @s charge matches 2 run place template atrium_events:armada/airships/detail/disembark_bridge_2 ^6 ^-5 ^-7
execute as @e[tag=atrium_disembarking_airship] at @s if score @s charge matches 3 run place template atrium_events:armada/airships/detail/disembark_bridge_3 ^6 ^-5 ^-7
execute as @e[tag=atrium_disembarking_airship] at @s if score @s charge matches 4 run place template atrium_events:armada/airships/detail/disembark_bridge_4 ^6 ^-5 ^-7
execute as @e[tag=atrium_disembarking_airship] at @s if score @s charge matches 5 run place template atrium_events:armada/airships/detail/disembark_bridge_5 ^6 ^-5 ^-7
execute as @e[tag=atrium_disembarking_airship] at @s if score @s charge matches 6 run place template atrium_events:armada/airships/detail/disembark_bridge_6 ^6 ^-5 ^-7
execute as @e[tag=atrium_disembarking_airship] at @s if score @s charge matches 7 run place template atrium_events:armada/airships/detail/disembark_bridge_7 ^6 ^-5 ^-7
execute as @e[tag=atrium_disembarking_airship] at @s if score @s charge matches 8 run place template atrium_events:armada/airships/detail/disembark_bridge_8 ^6 ^-5 ^-7
execute as @e[tag=atrium_disembarking_airship] at @s if score @s charge matches 9 run place template atrium_events:armada/airships/detail/disembark_bridge_9 ^6 ^-5 ^-7
execute as @e[tag=atrium_disembarking_airship] at @s if score @s charge matches 10 run place template atrium_events:armada/airships/detail/disembark_bridge_10 ^7 ^-5 ^-7
execute as @e[tag=atrium_disembarking_airship] at @s if score @s charge matches 11 run scoreboard players set @s charge -1
execute as @e[tag=atrium_disembarking_airship] at @s if score @s charge matches -1 run tag @s remove atrium_disembarking_airship
execute as @e[tag=atrium_armada_pilot] if score @s charge matches -1 run scoreboard players reset @s charge
execute at @e[tag=atrium_disembarking_airship] run playsound minecraft:block.wood.place block @a[distance=..25] ~ ~ ~ 1 1 0.5
execute if entity @e[tag=atrium_disembarking_airship] run schedule function atrium_events:structures/armada/airships/basic_airship_disembark 1s