# Wormhole to The Far Lands - December Anomaly 2021
execute as @a[predicate=atrium:focus_and_sneaking] at @s run particle minecraft:reverse_portal ~ ~ ~ 0 0 0 5 250
execute as @a[predicate=atrium:focus_and_sneaking] at @s run playsound minecraft:block.ender_chest.open master @a[distance=..30] ~ ~ ~ 0.5 0.75 0.1
execute as @a[predicate=atrium:focus_and_sneaking] run tp @s -459.5 237 -12551101.5
particle minecraft:portal -459.5 237 -12551101.5 0 0 0 2 50 normal
particle minecraft:firework -459.5 237 -12551101.5 0 0 0 0.5 1 normal
execute positioned -459.5 237 -12551101.5 run playsound minecraft:ambient.cave master @a[distance=..30] ~ ~ ~ 0.35 0.25 0.1
schedule function atrium:patreon/far_wormhole 10t
