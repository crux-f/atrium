# (this uses a simplified version of the logic found in atrium:triggers/magic/spell_charge that players use)
#
# +20 charge per second
# At the 1, 2, and 3 second marks, play a sound.
scoreboard players add @s charge 1
execute if entity @s[scores={charge=20}] run playsound minecraft:particle.soul_escape player @a[distance=..15] ~ ~ ~ 2 0.5 1
execute if entity @s[scores={charge=40}] run playsound minecraft:particle.soul_escape player @a[distance=..15] ~ ~ ~ 2 1 1
execute if entity @s[scores={charge=60}] run playsound minecraft:particle.soul_escape player @a[distance=..15] ~ ~ ~ 2 1.25 1
execute if entity @s[scores={charge=80}] run playsound minecraft:particle.soul_escape player @a[distance=..15] ~ ~ ~ 2 2 1
execute if entity @s[scores={charge=100}] run playsound minecraft:particle.soul_escape player @a[distance=..15] ~ ~ ~ 2 2 1
execute if entity @s[scores={charge=120}] run playsound minecraft:particle.soul_escape player @a[distance=..15] ~ ~ ~ 2 2 1
#
execute if entity @s[scores={charge=20}] positioned ~ ~.25 ~ run particle minecraft:sculk_soul ~ ~1.25 ~ 0.25 0.25 0.25 0.1 5 force
execute if entity @s[scores={charge=40}] positioned ~ ~.25 ~ run particle minecraft:sculk_soul ~ ~1.25 ~ 0.25 0.25 0.25 0.1 5 force
execute if entity @s[scores={charge=60}] positioned ~ ~.25 ~ run particle minecraft:sculk_soul ~ ~1.25 ~ 0.25 0.25 0.25 0.1 5 force
execute if entity @s[scores={charge=80}] positioned ~ ~.25 ~ run particle minecraft:sculk_soul ~ ~1.25 ~ 0.25 0.25 0.25 0.1 15 force
execute if entity @s[scores={charge=100}] positioned ~ ~.25 ~ run particle minecraft:sculk_soul ~ ~1.25 ~ 0.25 0.25 0.25 0.1 15 force
execute if entity @s[scores={charge=120}] positioned ~ ~.25 ~ run particle minecraft:sculk_soul ~ ~1.25 ~ 0.25 0.25 0.25 0.1 15 force
#
# Particle
execute positioned ~ ~1.25 ~ run particle minecraft:sculk_soul ~ ~ ~ 0 0 0 0 1 force