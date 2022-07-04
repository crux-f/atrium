execute positioned ~ ~3 ~ if entity @p[distance=..3] run particle minecraft:lava ~ ~ ~ 0.5 0.5 0.5 2 50 normal
execute positioned ~ ~4 ~ run playsound minecraft:entity.blaze.shoot block @a[distance=..20] ~ ~ ~ 1 1 0.1
execute in atrium:depths run schedule function atrium:travel/misc/magmagate_2 10t
