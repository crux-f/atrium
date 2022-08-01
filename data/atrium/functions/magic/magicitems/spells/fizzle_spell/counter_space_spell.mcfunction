# Set score to -3 to incur spellcasting penalty
scoreboard players set @s spacestaff -3
# Particles & sound
execute at @s run playsound minecraft:block.bubble_column.whirlpool_inside player @a[distance=..15] ~ ~ ~ 1 0.5 0.1
execute at @s run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.1 50 normal