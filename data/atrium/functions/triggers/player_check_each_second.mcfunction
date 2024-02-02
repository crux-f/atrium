# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/player_check_each_second
#
# Boss Bars
execute unless entity @e[tag=atrium_lich,tag=atrium_alerted] run bossbar set atrium:lich players
#
# Custom advancements
advancement grant @s only atrium:atrium_2024
execute if entity @s[level=100..] run advancement grant @s only atrium:magic/unlightenment
#
# ANOMALY: On Your Heels
# Each time a player enters the world for the first time, an hour after they spawn in, someone arrives looking for them.
# (Comment out when anomaly ends)
execute unless entity @s[advancements={atrium_events:tracking/patreon/on_your_heels=true}] run function atrium:patreon/on_your_heels_check
#
# Run bounty script if the player has a bounty on their head.
execute if entity @s[tag=atrium_bounty_target] run function atrium:entities/bounty_manager