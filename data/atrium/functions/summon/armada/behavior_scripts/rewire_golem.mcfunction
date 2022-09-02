# Activate Haywire Golem
#
# Tag an golem if a player is nearby
execute at @s[tag=hidden_saboteur,scores={charge=3..6}] if entity @a[distance=..70,tag=!spectator] run tag @e[limit=1,distance=..50,type=minecraft:iron_golem,sort=random,tag=!haywire_golem] add going_haywire
#
tag @e[tag=going_haywire] add haywire_golem
#
# Apply loud angry metallic sound effects to golem (since it takes damage from the rewiring process. Sort of like a war cry)
execute at @e[tag=going_haywire] run playsound minecraft:entity.iron_golem.death hostile @a[distance=..30] ~ ~ ~ 1 0.5 0.25
#
# Target a player using AngryAt
execute run data merge entity @e[limit=1,tag=haywire_golem] {AngryAt:[I;110787060,1156138790,-1514210135,238594805],AngerTime:99999,Health:60f,Attributes:[{Name:"generic.follow_range", Base:70.0}]}
execute as @a[limit=1,distance=..70,tag=!spectator] run data modify entity @e[limit=1,tag=haywire_golem,nbt={AngryAt:[I;110787060,1156138790,-1514210135,238594805]}] AngryAt set from entity @s UUID
#
# Remove temp tag
tag @e[tag=going_haywire] remove going_haywire