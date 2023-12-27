# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/player_check_each_second
#
# Boss Bars
execute unless entity @e[tag=atrium_lich,tag=atrium_alerted] run bossbar set atrium:lich players
#
# Custom advancements
advancement grant @s only atrium:atrium_2024
execute if entity @s[level=100..] run advancement grant @s only atrium:magic/unlightenment