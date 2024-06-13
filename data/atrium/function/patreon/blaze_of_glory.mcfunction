execute as @e[type=minecraft:creeper] at @s run data merge entity @e[type=creeper,limit=1,sort=nearest] {ignited:1b}
execute as @e[type=minecraft:creeper] at @s run playsound minecraft:block.bell.use hostile @a[distance=..8] ~ ~ ~ 0.5 2 0.1
schedule function atrium:patreon/blaze_of_glory 3600s
