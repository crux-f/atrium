# particles!
execute at @a[tag=resurrector] run particle minecraft:end_rod ~ ~ ~ 0 0.1 0 0.02 3 normal
execute at @a[tag=resurrectee] run particle minecraft:totem_of_undying ~ ~ ~ 0 0.1 0 0.3 8
# Add 1 every tick
scoreboard players add @a[tag=resurrector] resurrect 1
# continue repeating this until resurrect_complete stops it
execute if entity @a[scores={resurrect=..59}] run schedule function atrium:shrines/resurrect_repeat 1t
# 20 ticks = 1 second. After 3 seconds, run the resurrect_complete function for each resurrector at their location
execute if entity @a[scores={resurrect=60..}] run execute at @a[tag=resurrector] run function atrium:shrines/resurrect_complete

