execute if entity @e[tag=blackknight] store result bossbar atrium:blackknight value run data get entity @e[tag=blackknight,limit=1] Health 1
execute as @e[tag=blackknight] at @s run bossbar set atrium:blackknight players @a[distance=..70]
execute at @e[tag=marked] run particle minecraft:portal ~ ~ ~ 1 1 1 2 10 normal 
execute unless entity @e[tag=blackknight] run bossbar set atrium:blackknight players
schedule function atrium:events/knightboss/blackknight_boss 1t
execute unless entity @e[tag=blackknight] run schedule clear atrium:events/knightboss/blackknight_boss

