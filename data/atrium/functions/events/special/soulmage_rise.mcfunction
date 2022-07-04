execute at @e[tag=soulmage] run playsound minecraft:entity.panda.eat master @a[distance=..50] ~ ~ ~ 1 0.1 1
execute at @e[tag=soulmage] run playsound minecraft:entity.panda.eat master @a[distance=..50] ~ ~ ~ 1 0.1 1
execute at @e[tag=soulmage] run playsound minecraft:entity.panda.eat master @a[distance=..50] ~ ~ ~ 1 0.1 1
execute at @e[tag=soulmage] run execute at @e[type=minecraft:zombie,distance=..30,limit=10] run summon zombie ~ ~-1 ~
execute at @e[tag=soulmage] run execute at @e[type=minecraft:husk,distance=..30,limit=10] run summon husk ~ ~-1 ~
execute at @e[tag=soulmage] run execute at @e[type=minecraft:zombie,distance=..30] run particle minecraft:falling_dust minecraft:sand ~ ~ ~ 0.5 1 0.5 0.2 30 normal
execute at @e[tag=soulmage] run execute at @e[type=minecraft:husk,distance=..30] run particle minecraft:falling_dust minecraft:sand ~ ~ ~ 0.5 1 0.5 0.2 30 normal
execute at @e[tag=soulmage] run execute unless entity @e[type=minecraft:husk,distance=..40] run function atrium:events/undead_crew
execute at @e[tag=soulmage] run particle minecraft:dust 0.180 1.000 0.235 1 ~ ~1 ~ 0.5 0.5 0.5 1 100 normal
