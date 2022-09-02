# Activate Haywire Golem
#
# Tag a golem if a player is nearby
execute at @s[tag=hidden_saboteur,scores={charge=0..}] if entity @p[distance=..70,gamemode=!spectator] run tag @e[limit=1,distance=..50,type=minecraft:iron_golem,sort=random] add going_haywire
#
tag @e[tag=going_haywire] add haywire_golem
#
# Tag player for golem to target (this isn't working for some reason?)
tag @p[limit=1,distance=..70,gamemode=!spectator] add haywire_target
#
# Play loud angry metallic sound effects at golem
execute at @e[tag=going_haywire] run playsound minecraft:entity.iron_golem.death hostile @a[distance=..30] ~ ~ ~ 1 0.5 0.25
#
# Target a player using AngryAt
execute run data merge entity @e[limit=1,tag=going_haywire] {AngerTime:999999999,Health:60f,Attributes:[{Name:"generic.follow_range", Base:70.0}]}
execute at @s[tag=hidden_saboteur,scores={charge=0..}] run data modify entity @e[limit=1,distance=..50,sort=nearest,tag=going_haywire] AngryAt set from entity @p UUID
#
# Remove temp tags
tag @e[tag=going_haywire] remove going_haywire
# tag @a[tag=haywire_target] remove haywire_target
# test
say going haywire...