# Already has caster position(s) stored from charge script
#
# Tag the caster for the repeat script 
tag @s add dance_caster
#
# Remove 1 Shimmering Feather (casting component cost)
clear @s minecraft:feather{shimmering_feather:1b} 1
# Spell cleanup
execute as @s run function atrium:magic/magicitems/spell_cast_complete
#
# Launch caster with Levitation XIII for 1 second!
effect give @s levitation 1 12 true
# Gives them Slow Falling I for 4 seconds.
effect give @s slow_falling 5 0 false
# Start repeating function
schedule function atrium:magic/magicitems/spells/dance_repeat 3s
#
# SFX
#
execute at @s anchored eyes run particle minecraft:end_rod ^ ^ ^ 0 0.75 0 0 50
execute at @s anchored feet run particle minecraft:cloud ~ ~ ~ 0 0.5 0 0.1 50
execute at @s run playsound minecraft:block.ender_chest.open player @a[distance=..10] ~ ~ ~ 1 1.75 0.2
