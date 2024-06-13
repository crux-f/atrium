# PATREON ANOMALY: Gruesome Revival - Ghost players may possess a Zombie for 10 minutes to steal its body and resurrect themselves.
# Activated every tick you are within 1 block of a Zombie by the ghost manager in atrium:general/death
execute unless score @s atrium_gruesome_revival_anomaly matches 12000 run scoreboard players add @s atrium_gruesome_revival_anomaly 1
particle minecraft:falling_dust nether_bricks ~ ~1.5 ~ 0.25 0.5 0.25 0.1 1 normal
execute if score @s atrium_gruesome_revival_anomaly matches 1 run playsound minecraft:entity.zombie.infect player @a[distance=..10] ~ ~ ~ 0.5 1 0.1
execute if score @s atrium_gruesome_revival_anomaly matches 12000 run gamemode survival @s
execute if score @s atrium_gruesome_revival_anomaly matches 12000 run playsound minecraft:entity.zombie_villager.cure player @a[distance=..15] ~ ~ ~ 1 0.5 0.1
execute if score @s atrium_gruesome_revival_anomaly matches 12000 run tp @e[type=minecraft:zombie,distance=..1,limit=1] ~ ~-2000 ~
execute if score @s atrium_gruesome_revival_anomaly matches 12000 run xp add @s -5 levels
execute if score @s atrium_gruesome_revival_anomaly matches 12000 run scoreboard players reset @s atrium_gruesome_revival_anomaly