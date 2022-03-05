execute at @e[tag=scrambler] run tp @e[tag=scrambler] @r[distance=..20,gamemode=survival]
execute at @e[tag=scrambler] run playsound minecraft:entity.ender_eye.death master @a[distance=..50] ~ ~ ~ 1 1 1
execute at @e[tag=scrambler] run playsound minecraft:entity.enderman.teleport master @a[distance=..50] ~ ~ ~ 1 1.4 1
execute at @e[tag=scrambler] run tp @p[distance=..3,gamemode=survival] @e[tag=witchsigil,limit=1,sort=random]
schedule function atrium:events/special/scrambler_switch2 3s

