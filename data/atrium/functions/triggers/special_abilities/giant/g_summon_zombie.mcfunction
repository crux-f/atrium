# Perform the summon at every giant that has the setup tag.
#
# (Particles)
execute at @e[tag=summon_setup] run particle minecraft:scrape ~ ~ ~ 0.5 0.1 0.5 0.5 100
# (Sound)
execute at @e[tag=summon_setup] run playsound minecraft:entity.zombie.destroy_egg hostile @a[distance=..25] ~ ~ ~ 0.75 0.7 0.1
#
# Summon 2 Zombies
execute at @e[tag=summon_setup] run summon minecraft:zombie ~1 ~ ~
execute at @e[tag=summon_setup] run summon minecraft:zombie ~ ~ ~1
# Summon more zombies...? (25% chance, 12 attempts)
execute at @e[tag=summon_setup] if predicate atrium:percentage_chances/0.25_p run summon minecraft:zombie ~2 ~ ~
execute at @e[tag=summon_setup] if predicate atrium:percentage_chances/0.25_p run summon minecraft:zombie ~ ~ ~2
execute at @e[tag=summon_setup] if predicate atrium:percentage_chances/0.25_p run summon minecraft:zombie ~-2 ~ ~
execute at @e[tag=summon_setup] if predicate atrium:percentage_chances/0.25_p run summon minecraft:zombie ~ ~ ~-2
execute at @e[tag=summon_setup] if predicate atrium:percentage_chances/0.25_p run summon minecraft:zombie ~-2 ~ ~2
execute at @e[tag=summon_setup] if predicate atrium:percentage_chances/0.25_p run summon minecraft:zombie ~2 ~ ~-2
execute at @e[tag=summon_setup] if predicate atrium:percentage_chances/0.25_p run summon minecraft:zombie ~2 ~ ~
execute at @e[tag=summon_setup] if predicate atrium:percentage_chances/0.25_p run summon minecraft:zombie ~ ~ ~2
execute at @e[tag=summon_setup] if predicate atrium:percentage_chances/0.25_p run summon minecraft:zombie ~-2 ~ ~
execute at @e[tag=summon_setup] if predicate atrium:percentage_chances/0.25_p run summon minecraft:zombie ~ ~ ~-2
execute at @e[tag=summon_setup] if predicate atrium:percentage_chances/0.25_p run summon minecraft:zombie ~-2 ~ ~2
execute at @e[tag=summon_setup] if predicate atrium:percentage_chances/0.25_p run summon minecraft:zombie ~2 ~ ~-2
#
#
# Remove tag from anyone who has it
tag @e[tag=summon_setup] remove summon_setup
