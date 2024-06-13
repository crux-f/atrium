# ANOMALY: On Your Heels
# Each time a player enters the world for the first time, an hour after they spawn in, someone arrives looking for them.
#
# Check if the timer (set in spawn script) has expired. If it hasn't, tick it down by 1 second.
# (run from player_check_each_second)
#
execute if score @s atrium_condition_timer matches ..-1 run scoreboard players add @s atrium_condition_timer 1
#
# If the timer has expired, give them the advancement, 
execute if score @s atrium_condition_timer matches 0.. run advancement grant @s only atrium_events:tracking/patreon/on_your_heels
# spawn the bounty hunter,
execute if score @s atrium_condition_timer matches 0.. at @s run function atrium:patreon/on_your_heels_spawn
# tag the player so they will be followed per code in player_check_each_second,
execute if score @s atrium_condition_timer matches 0.. run tag @s add atrium_bounty_target
# For the purposes of this, I'm going to add another tag so both tags get removed when the player kills their first bounty hunter.
execute if score @s atrium_condition_timer matches 0.. run tag @s add atrium_on_your_heels_target
# and reset the score.
execute if score @s atrium_condition_timer matches 0.. run scoreboard players reset @s atrium_condition_timer
