execute at @e[tag=maycoes] run execute at @e[type=minecraft:player,sort=random,distance=10..100,limit=2,gamemode=survival] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["maycoes_wilting_point"]}
execute at @e[tag=maycoes_wilting_point] run particle dust 1.000 0.149 0.020 1 ~ ~ ~ 0.5 5 0.5 0.1 100 normal
execute at @e[tag=maycoes_wilting_point] run playsound minecraft:block.beacon.deactivate master @a[distance=..30] ~ ~ ~ 0.6 0.5 0.1
schedule function atrium:events/maycoes_tm/maycoes_fluxcloud_cast 0.5s

