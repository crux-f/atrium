# Cast by the Eye of The Nameless. Redirected from mob_spell_charge
#
# Creates a ring of explosions
#
# SFX
playsound minecraft:entity.elder_guardian.curse hostile @a[distance=..15] ~ ~ ~ 1 0.5 0.5
# Particles
particle minecraft:bubble_column_up ~ ~1.25 ~ 0.1 0.1 0.1 1 75
particle dust_color_transition{from_color:[0.161,0.525,1.000],scale:1,to_color:[0.047,0.055,0.278]} ~ ~ ~ 0.5 0.5 0.5 0.2 50 normal
#
# Start repeat script
schedule function atrium:entities/mob_spells/eternal_silence_repeat 1s
# Reset score
scoreboard players set @s charge 0
# Chances for a longer cooldown
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 80
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 80
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 80
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 60
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 60
#
# Run Mob Spell cleanup
function atrium:entities/mob_spells/mob_spell_cast_complete
