# Every tick, add 1 to the timer. (starts at 100 for reasons. Check return_cast for details)
scoreboard players add @a[tag=return_spell_appearing] return_spell_dim 1
#
# Levitation effect to prevent gravity ruining my fun
effect give @a[tag=return_spell_appearing] levitation 1 0 true
# Particles!
execute at @a[tag=return_spell_appearing,predicate=atrium:in_overworld] run particle minecraft:spore_blossom_air ~ ~1 ~ 0.1 0.5 0.1 0 5
execute at @a[tag=return_spell_appearing,predicate=atrium:in_nether] run particle minecraft:crimson_spore ~ ~1 ~ 0.1 0.5 0.1 0 5
execute at @a[tag=return_spell_appearing,predicate=atrium:in_meridian] run particle minecraft:cloud ~ ~1 ~ 0.1 0.5 0.1 0 5
execute at @a[tag=return_spell_appearing,predicate=atrium:in_depths] run particle minecraft:mycelium ~ ~1 ~ 0.1 0.5 0.1 0 5
# execute at @a[tag=return_spell_appearing,predicate=atrium:in_abyss] run particle minecraft:??? ~ ~1 ~ 0.1 0.5 0.1 0 5
# SFX
execute at @a[tag=return_spell_appearing] run playsound minecraft:block.stone.hit player @a[distance=..5] ~ ~ ~ 0.25 0 0.01
execute at @a[tag=return_spell_appearing] run playsound minecraft:block.grass.hit player @a[distance=..5] ~ ~ ~ 0.35 0.2 0.01
# If my math is right, teleporting the player 0.02 blocks upward each tick will result in them finishing the animation on the surface of the target block
execute as @a[tag=return_spell_appearing] at @s run tp @s ~ ~0.01 ~
#
# Keep running this every tick until the timer depletes at 4 seconds (80 ticks)
execute if entity @a[tag=return_spell_appearing,scores={return_spell_dim=..180}] run schedule function atrium:magic/magicitems/spells/return_repeat 1t
#
# Spellcasting cleanup
#
# Remove tag from players who have finished casting / appearing
execute as @a[scores={return_spell_dim=180..}] run tag @s remove return_spell_appearing
# Reset the dimension score to -1 (meaning it will need to be Setup again, which will also overwrite the previously saved coordinates)
execute as @a[scores={return_spell_dim=180..}] run scoreboard players set @s return_spell_dim -1
