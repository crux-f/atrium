# tag a tp point with conjure_point
tag @e[tag=maycoes_tp,limit=1,sort=random] add conjure_point
# particles and sound
execute at @e[tag=conjure_point] run particle minecraft:flash ~ ~ ~ 6 6 6 1 40 normal
execute at @e[tag=conjure_point] run particle minecraft:dust -10 -10 -10 3 ~ ~ ~ 6 6 6 1 40 normal
execute at @e[tag=conjure_point] run playsound minecraft:entity.elder_guardian.curse master @a[distance=..100] ~ ~ ~ 1 1 0.3 
schedule function atrium:events/maycoes_tm/maycoes_conjure_cast 0.5s
