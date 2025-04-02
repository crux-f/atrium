# Add 1 to their event_misc score every 4 seconds.
execute as @e[type=pillager,tag=atrium_building_sky_cannon] unless score @s event_misc matches 8.. run scoreboard players add @s event_misc 1
#
# At each stage, place the next template (gives the appearence of the structure slowly being constructed).
execute as @e[type=pillager,tag=atrium_building_sky_cannon] if score @s event_misc matches 1 at @s positioned ~-3 ~ ~-3 run place template atrium_events:armada/siege/sky_cannon_construction_1
execute as @e[type=pillager,tag=atrium_building_sky_cannon] if score @s event_misc matches 2 at @s positioned ~-3 ~ ~-3 run place template atrium_events:armada/siege/sky_cannon_construction_2
execute as @e[type=pillager,tag=atrium_building_sky_cannon] if score @s event_misc matches 3 at @s positioned ~-3 ~ ~-3 run place template atrium_events:armada/siege/sky_cannon_construction_3
execute as @e[type=pillager,tag=atrium_building_sky_cannon] if score @s event_misc matches 4 at @s positioned ~-3 ~ ~-3 run place template atrium_events:armada/siege/sky_cannon_construction_4
execute as @e[type=pillager,tag=atrium_building_sky_cannon] if score @s event_misc matches 5 at @s positioned ~-3 ~ ~-3 run place template atrium_events:armada/siege/sky_cannon_construction_5
execute as @e[type=pillager,tag=atrium_building_sky_cannon] if score @s event_misc matches 6 at @s positioned ~-3 ~ ~-3 run place template atrium_events:armada/siege/sky_cannon_construction_6
execute as @e[type=pillager,tag=atrium_building_sky_cannon] if score @s event_misc matches 7 at @s run function atrium_events:structures/armada/siege/sky_cannon/finish_construction
#
# SFX
execute as @e[type=pillager,tag=atrium_building_sky_cannon] unless score @s event_misc matches 8.. at @s run playsound minecraft:entity.villager.work_toolsmith block @a[distance=..15] ~ ~ ~ 1 0 0.2
# Continue running every 4 seconds until the project is completed or the project leader cannot be found (unloaded or dead).
# (Finish script removes the building tag which will cause this to end.)
execute if entity @e[type=pillager,tag=atrium_building_sky_cannon] run schedule function atrium_events:structures/armada/siege/sky_cannon/project_repeat 4s