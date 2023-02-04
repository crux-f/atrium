# can't wait to shoot people into the sky
execute positioned ~ ~2 ~ run particle minecraft:cloud ~ ~ ~ 0.5 0.5 0.5 0.5 50 normal
execute positioned ~ ~2 ~ run effect give @e[distance=..1,limit=1] minecraft:levitation 6 99 false
execute positioned ~ ~2 ~ run effect give @e[distance=..1,limit=1] minecraft:slow_falling 45 0 false
execute positioned ~ ~2 ~ run playsound minecraft:block.beacon.activate master @a[distance=..200] ~ ~ ~ 2 2 0.1
