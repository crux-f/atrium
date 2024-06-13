# particles!
execute as @a[tag=resurrector] at @s anchored feet run particle minecraft:soul_fire_flame ~ ~0.35 ~ 0 0.1 0 0.02 3 normal
execute as @a[tag=resurrectee] at @s anchored eyes run particle minecraft:soul_fire_flame ^ ^ ^ 0 0.1 0 0.02 1 normal
# Add 1 every tick
scoreboard players add @a[tag=resurrector] resurrect 1
# continue repeating this until resurrect_complete stops it
execute if entity @a[scores={resurrect=..59}] run schedule function atrium:shrines/resurrection/resurrect_repeat 1t
# 20 ticks = 1 second. After 3 seconds, run the resurrect_complete function for each resurrector at their location
execute as @a[scores={resurrect=60..}] run function atrium:shrines/resurrection/resurrect_complete

