execute at @e[tag=maycoes] run particle minecraft:flash ~ ~1.5 ~ 0 0 0 1 5
execute at @e[tag=maycoes] run playsound minecraft:entity.enderman.teleport master @a[distance=..50] ~ ~ ~ 1 1.4 0.3
tp @e[tag=maycoes_marker] @e[tag=maycoes_tp,limit=1,sort=random,distance=5..]
