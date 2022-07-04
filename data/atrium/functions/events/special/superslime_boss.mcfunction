# if the super slime is alive, store its hp inside the boss bar. 
# Note: boss bar must have the same maximum value as the hp maximum on the boss.
execute if entity @e[tag=super_slime] store result bossbar atrium:superslime value run data get entity @e[tag=super_slime,limit=1] Health 1
#
# Show all players within 70 blocks of the super slime the boss bar
execute as @e[tag=super_slime] at @s run bossbar set atrium:superslime players @a[distance=..70]
#
# decorative particles
execute at @e[tag=super_slime] run particle minecraft:splash ~ ~ ~ 2 2 2 2 10 normal 
#
# IF the super slime is in water, give it regeneration and make it jump really high.
effect give @e[tag=super_slime,predicate=atrium:in_hungering_marsh_water] minecraft:regeneration 12 4
data merge entity @e[tag=super_slime,predicate=atrium:in_hungering_marsh_water,limit=1] {Motion:[0.0,2.0,0.0]} 
# if the super slime is still alive, keep this going.
execute if entity @e[tag=super_slime] run schedule function atrium:events/superslime_boss 1t
#
# if the super slime runs into leaves, destroy them.
execute at @e[tag=super_slime] anchored eyes if block ^0 ^0 ^1.5 #minecraft:leaves run summon area_effect_cloud ~ ~ ~ {Particle:"splash",Radius:0.5f,RadiusPerTick:0.5f,RadiusOnUse:0f,Duration:20,DurationOnUse:0f,Potion:"minecraft:empty",Effects:[{Id:17b,Amplifier:5b,Duration:40},{Id:19b,Amplifier:0b,Duration:40}]}
execute at @e[tag=super_slime] anchored eyes if block ^0 ^0 ^1.5 #minecraft:leaves run playsound minecraft:entity.player.splash.high_speed master @a[distance=..30] ~ ~ ~ 1 2 0.1
# unless the slime is alive, turn off the boss bar
execute unless entity @e[tag=super_slime] run bossbar set atrium:superslime players

