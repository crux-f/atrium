# Omen of Aurora - Players that fall at least 20 blocks gain Slow Falling for 20 seconds.
#
schedule function atrium_events:patreon/anomalies/omen_of_aurora 1t
execute as @a if data entity @s[gamemode=survival] {OnGround:1b} run scoreboard players reset @s atrium_omen_of_aurora_anomaly
execute as @a if predicate atrium:effects/amplifier/if_slow_falling_any run scoreboard players reset @s atrium_omen_of_aurora_anomaly
execute as @a if data entity @s[gamemode=survival] {OnGround:0b} at @s unless block ~ ~ ~ minecraft:water unless block ~ ~ ~ minecraft:ladder run scoreboard players add @s atrium_omen_of_aurora_anomaly 1
execute as @a if score @s[gamemode=survival] atrium_omen_of_aurora_anomaly matches 27.. run effect give @s slow_falling 20 0 false
execute as @a if score @s[gamemode=survival] atrium_omen_of_aurora_anomaly matches 27.. run playsound atrium:favor.aurora neutral @s ~ ~ ~ 1 2 1