# Already has caster position(s) stored from charge script
#
# Remove 1 Redstone (casting component cost)
clear @s minecraft:redstone 1
# Spell cleanup
execute as @s run function atrium:magic/magicitems/spell_cast_complete
#
# SFX
execute at @s positioned ^ ^2 ^6 run playsound minecraft:block.bubble_column.whirlpool_inside player @a[distance=..15] ~ ~ ~ 1 0.5 0.1
#
#
# If the target is a player, set all their staff scores to 0.
execute at @s positioned ^ ^2 ^6 as @p[distance=..3,scores={airstaff=1..}] run scoreboard players set @s airstaff -3
execute at @s positioned ^ ^2 ^6 as @p[distance=..3,scores={earthstaff=1..}] run scoreboard players set @s earthstaff -3
execute at @s positioned ^ ^2 ^6 as @p[distance=..3,scores={firestaff=1..}] run scoreboard players set @s firestaff -3
execute at @s positioned ^ ^2 ^6 as @p[distance=..3,scores={waterstaff=1..}] run scoreboard players set @s waterstaff -3
execute at @s positioned ^ ^2 ^6 as @p[distance=..3,scores={timestaff=1..}] run scoreboard players set @s timestaff -3
execute at @s positioned ^ ^2 ^6 as @p[distance=..3,scores={spacestaff=1..}] run scoreboard players set @s spacestaff -3
execute at @s positioned ^ ^2 ^6 as @p[distance=..3,scores={mercurialstaff=1..}] run scoreboard players set @s mercurialstaff -3
execute at @s positioned ^ ^2 ^6 as @p[distance=..3,scores={melodicstaff=1..}] run scoreboard players set @s melodicstaff -3
# Particles!
execute at @s positioned ^ ^2 ^6 as @p[distance=..3,scores={airstaff=1..},scores={earthstaff=1..},scores={firestaff=1..},scores={waterstaff=1..},scores={timestaff=1..},scores={spacestaff=1..},scores={mercurialstaff=1..},scores={melodicstaff=1..},] run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.1 50