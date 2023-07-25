# Cast by Lich. Redirected from mob_spell_charge OR from atrium:structures/sanctum/behavior_scripts/lich_idle
#
# At least one Sleepwalker
function atrium:summon/sanctum/sleepwalker
# 50% chance of a second one
execute if predicate atrium:percentage_chances/0.50_p run function atrium:summon/sanctum/sleepwalker
# 50% chance of a third one
execute if predicate atrium:percentage_chances/0.50_p run function atrium:summon/sanctum/sleepwalker
# 10% chance of one Sky Dancer if I can find it??
# execute if predicate atrium:percentage_chances/0.10_p run function atrium:summon/sanctum/skydancer
#
# Particles
function atrium:summon/summon_poof
playsound minecraft:entity.zombie_villager.cure hostile @a[distance=..50] ~ ~ ~ 1 0.1 0.1
# Reset score
scoreboard players set @s charge 0
# Chances for a longer cooldown
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 20
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 20
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 20