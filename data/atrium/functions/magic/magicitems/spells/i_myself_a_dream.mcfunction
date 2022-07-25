# Tag the caster
tag @a[predicate=atrium:i_myself_a_dream_req] add myself_a_dream_caster
tag @a[predicate=atrium:i_myself_a_dream_req] add dreaming
# Sounds and particles
execute as @a[tag=myself_a_dream_caster] at @s run playsound minecraft:entity.bat.takeoff player @a[distance=..30] ~ ~ ~ 0.2 0.7 0.01
execute as @a[tag=myself_a_dream_caster] at @s run playsound minecraft:atrium.favor.aurora player @a[distance=..30] ~ ~ ~ 0.8 0.5 0.1
execute as @a[tag=myself_a_dream_caster] at @s anchored eyes run particle minecraft:enchant ^0.4 ^-0.05 ^0.5 0.05 0.05 0.05 0.1 10
execute as @a[tag=myself_a_dream_caster] at @s anchored eyes run particle minecraft:poof ^0.4 ^-0.05 ^0.5 0.05 0.05 0.05 0 5
clear @a[tag=myself_a_dream_caster] minecraft:quartz{air_crystal:1b} 1
# Spell cleanup
execute as @s run function atrium:magic/magicitems/spell_cast_complete
tag @a[tag=myself_a_dream_caster] remove myself_a_dream_caster
function atrium:magic/magicitems/spells/i_myself_a_dream_repeat
