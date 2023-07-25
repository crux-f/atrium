# Lets presume that casters who have this spell aren't going to wear armor - makes my life easier
# Otherwise this works exactly like the Earth Staff version.
# Casting particles
particle minecraft:block minecraft:mossy_cobblestone ~ ~ ~ 0.3 1.25 0.3 0.05 70
# Casting sfx
playsound minecraft:block.lodestone.place player @a[distance=..15] ~ ~ ~ 1 1.5 0.1
# Give the caster Resistence III.
effect give @s resistance 3600 2 false
# Reset score
scoreboard players set @s charge 0
# Chances for a longer cooldown
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 20
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 20
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 20