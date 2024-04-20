# Cast by the Infernium Pyromancer. Redirected from mob_spell_charge.
#
# Summon at least 1 Blaze
summon minecraft:blaze ^ ^ ^0.5 {Tags:["atrium_summoned","atrium_just_summoned"]}
# 25% chance for an additional blaze
execute if predicate atrium:percentage_chances/0.25_p run summon minecraft:blaze ^ ^ ^-0.5 {Tags:["atrium_summoned","atrium_just_summoned"]}
# 25% chance for an additional blaze
execute if predicate atrium:percentage_chances/0.25_p run summon minecraft:blaze ^ ^2 ^ {Tags:["atrium_summoned","atrium_just_summoned"]}
#
# Particles
particle minecraft:small_flame ~ ~0.5 ~ 0.3 0.3 0.3 0 35 normal
execute at @e[type=minecraft:blaze,tag=atrium_just_summoned] run function atrium:summon/summon_poof
# SFX
playsound minecraft:entity.blaze.ambient hostile @a[distance=..50] ~ ~ ~ 1 0.1 0.1
# Remove tags
tag @e[type=minecraft:blaze,distance=..10] remove atrium_just_summoned
# Base cooldown = 10 seconds
scoreboard players set @s charge -200
# Chances for a longer cooldown (2-6 extra seconds)
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 40
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 40
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 40
# Run Mob Spell cleanup
function atrium:entities/mob_spells/mob_spell_cast_complete
#
# If spell cleanup broke the staff, remove the atrium_special tag.
execute if entity @s[nbt=!{HandItems:[{},{tag:{atrium_staff:1b}}]}] run tag @s remove atrium_special