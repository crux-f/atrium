# Activate Haywire Golem
#
# Tag a golem if a player is nearby
execute at @s[tag=atrium_hidden_saboteur,scores={charge=0..}] as @p[distance=..70,sort=random,gamemode=!spectator] run tag @e[limit=1,distance=..70,type=minecraft:iron_golem,sort=random] add atrium_going_haywire
#
tag @e[limit=1,distance=..70,sort=random,tag=atrium_going_haywire] add atrium_haywire_golem
#
# Tag player for golem to target (this isn't working for some reason?)
tag @p[distance=..70,sort=random,gamemode=!spectator] add atrium_haywire_target
#
# Play loud angry metallic sound effects at golem
execute at @e[limit=1,distance=..70,sort=random,tag=atrium_going_haywire] run playsound minecraft:entity.iron_golem.death hostile @a[distance=..30] ~ ~ ~ 1 0.5 0.25
#
# Target a player using AngryAt
data merge entity @e[limit=1,distance=..70,sort=random,tag=atrium_going_haywire] {AngerTime:999999999,Health:60f,Attributes:[{Name:"generic.follow_range", Base:70.0}]}
data modify entity @e[limit=1,distance=..70,sort=random,tag=atrium_going_haywire] AngryAt set from entity @p[distance=..70,sort=random,tag=atrium_haywire_target] UUID
#
# Remove temp tags
tag @e[limit=1,distance=..70,sort=random,tag=atrium_going_haywire] remove atrium_going_haywire
tag @p[distance=..70,sort=random,tag=atrium_haywire_target] remove atrium_haywire_target