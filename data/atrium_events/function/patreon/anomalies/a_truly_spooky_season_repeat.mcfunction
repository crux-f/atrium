# October 2024 anomaly
# run once every 3 seconds. the other half is run in atrium:triggers/player_check_each_second
execute as @e[type=#atrium:hostile_mobs] run effect give @s minecraft:invisibility 60 0 true
execute as @e[type=#atrium:hostile_mobs] run effect give @s minecraft:weaving 60 0 true
#
schedule function atrium_events:patreon/anomalies/a_truly_spooky_season_repeat 3s