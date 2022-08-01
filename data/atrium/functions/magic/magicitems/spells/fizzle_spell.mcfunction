# Already has caster position(s) stored from charge script
#
# Remove 1 Redstone (casting component cost)
clear @s minecraft:redstone 1
#
# Cast SFX / Particle
execute at @s run particle minecraft:campfire_cosy_smoke ^-0.2 ^2 ^0.5 0 0 0 0 1 force
execute at @s run playsound minecraft:block.redstone_torch.burnout player @a[distance=..2] ~ ~ ~ 0.5 2 0.1
#
# Spell cleanup
execute as @s run function atrium:magic/magicitems/spell_cast_complete
#
# If the target is a player, set all their staff scores to 0.
execute at @s positioned ^ ^2 ^6 as @p[distance=..3,scores={airstaff=1..}] run function atrium:magic/magicitems/spells/fizzle_spell/counter_air_spell
execute at @s positioned ^ ^2 ^6 as @p[distance=..3,scores={earthstaff=1..}] run function atrium:magic/magicitems/spells/fizzle_spell/counter_earth_spell
execute at @s positioned ^ ^2 ^6 as @p[distance=..3,scores={firestaff=1..}] run function atrium:magic/magicitems/spells/fizzle_spell/counter_fire_spell
execute at @s positioned ^ ^2 ^6 as @p[distance=..3,scores={waterstaff=1..}] run function atrium:magic/magicitems/spells/fizzle_spell/counter_water_spell
execute at @s positioned ^ ^2 ^6 as @p[distance=..3,scores={timestaff=1..}] run function atrium:magic/magicitems/spells/fizzle_spell/counter_time_spell
execute at @s positioned ^ ^2 ^6 as @p[distance=..3,scores={spacestaff=1..}] run function atrium:magic/magicitems/spells/fizzle_spell/counter_space_spell
execute at @s positioned ^ ^2 ^6 as @p[distance=..3,scores={mercurialstaff=1..}] run function atrium:magic/magicitems/spells/fizzle_spell/counter_mercurial_spell
execute at @s positioned ^ ^2 ^6 as @p[distance=..3,scores={melodicstaff=1..}] run function atrium:magic/magicitems/spells/fizzle_spell/counter_melodic_spell