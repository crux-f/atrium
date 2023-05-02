# Summon undead (grants them Resistance 1 for 30 seconds on summon)
#
# If the vex would be summoned in a wall, teleport it to the nearest necromancer instead.
execute unless block ~ ~ ~ #atrium:non_solid_blocks run tp @s @e[limit=1,sort=nearest,tag=atrium_armada_necromancer]
# 25% chance of a skeleton instead of a zombie
execute if predicate atrium:percentage_chances/0.25_p run tag @s add atrium_skeleton_spawn
#
execute unless entity @s[tag=atrium_skeleton_spawn] run summon zombie ~ ~ ~ {Team:"armada",ActiveEffects:[{Id:11,Amplifier:0b,Duration:600,ShowParticles:1b}]}
#
execute if entity @s[tag=atrium_skeleton_spawn] run summon skeleton ~ ~ ~ {Team:"armada",HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.000F,0.085F],ActiveEffects:[{Id:11,Amplifier:0b,Duration:600,ShowParticles:1b}]}
#
# sfx
execute at @s run function atrium_events:summon/armada/behavior_scripts/sfx/undead_animate
# Remove vexes after
execute as @s run function atrium_events:summon/armada/behavior_scripts/looters/remove_vexes