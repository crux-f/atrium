execute at @e[tag=maycoes] run execute as @e[type=minecraft:player,sort=random,distance=..100,limit=4,gamemode=survival] run tag @s add magic_burn
execute at @e[tag=magic_burn] run particle minecraft:damage_indicator ~ ~0.5 ~ 0.5 0.5 0.5 0.5 30
execute at @e[tag=magic_burn] run playsound minecraft:entity.player.levelup master @a[distance=..10] ~ ~ ~ 0.7 0.1 0.1
schedule function atrium:events/maycoes_tm/maycoes_magic_burn_cast 1.5s
