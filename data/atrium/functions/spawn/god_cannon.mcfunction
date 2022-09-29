# can't wait to shoot people into the sky
execute positioned ~ ~2 ~ run particle minecraft:cloud ~ ~ ~ 0.5 0.5 0.5 0.5 50 normal
execute positioned ~ ~2 ~ run effect give @e[distance=..1,limit=1] minecraft:levitation 5 75
execute positioned ~ ~2 ~ run playsound minecraft:block.beacon.activate master @a[distance=..200] ~ ~ ~ 2 2 0.1
