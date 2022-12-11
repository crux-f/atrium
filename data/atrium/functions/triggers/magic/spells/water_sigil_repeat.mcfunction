# Particle animation
execute at @e[tag=atrium_water_sigil_dummy] run particle dust 0.000 0.600 0.400 1 ^1.25 ^ ^ 0.000 1.000 0.565 0.1 0 normal
execute at @e[tag=atrium_water_sigil_dummy] run particle dust 0.000 0.600 0.400 1 ^-1.25 ^ ^ 0.000 1.000 0.565 0.1 0 normal
execute at @e[tag=atrium_water_sigil_dummy] run particle dust 0.000 0.600 0.400 1 ^ ^ ^-1 0.000 1.000 0.565 0.1 0 normal
execute at @e[tag=atrium_water_sigil_dummy] run particle dust 0.000 0.600 0.400 1 ^ ^ ^1 0.000 1.000 0.565 0.1 0 normal
execute at @e[tag=atrium_water_sigil_dummy] run tp @e[tag=atrium_water_sigil_dummy] ~ ~ ~ ~-2 ~0
# Remove the dummy when the cloud is about to expire
execute as @e[tag=atrium_water_sigil_dummy] at @s unless entity @e[tag=atrium_water_sigil,distance=..3] run kill @s
# Keep running until cloud expires
execute as @e[tag=atrium_water_sigil_dummy] at @s if entity @e[tag=atrium_water_sigil,distance=..3] run schedule function atrium:triggers/magic/spells/water_sigil_repeat 1t
#
# Each "Crop" block (except Nether Wart) in the area has a 2% chance per tick of growing 1 stage
#
# Central Block
execute at @e[tag=atrium_water_sigil_dummy] positioned ~ ~0.0625 ~ if predicate atrium:percentage_chances/0.01_p run function atrium:misc/block_state/grow_water_crops_1_age
# NORTH | z = -1
execute at @e[tag=atrium_water_sigil_dummy] positioned ~ ~0.0625 ~-1 if predicate atrium:percentage_chances/0.01_p run function atrium:misc/block_state/grow_water_crops_1_age
# NORTH EAST | x= 1, z = -1
execute at @e[tag=atrium_water_sigil_dummy] positioned ~1 ~0.0625 ~-1 if predicate atrium:percentage_chances/0.01_p run function atrium:misc/block_state/grow_water_crops_1_age
# EAST | x = 1
execute at @e[tag=atrium_water_sigil_dummy] positioned ~1 ~0.0625 ~ if predicate atrium:percentage_chances/0.01_p run function atrium:misc/block_state/grow_water_crops_1_age
# SOUTH EAST x = 1, z = 1
execute at @e[tag=atrium_water_sigil_dummy] positioned ~1 ~0.0625 ~1 if predicate atrium:percentage_chances/0.01_p run function atrium:misc/block_state/grow_water_crops_1_age
# SOUTH z = 1
execute at @e[tag=atrium_water_sigil_dummy] positioned ~ ~0.0625 ~1 if predicate atrium:percentage_chances/0.01_p run function atrium:misc/block_state/grow_water_crops_1_age
# SOUTH WEST x = -1, z = 1
execute at @e[tag=atrium_water_sigil_dummy] positioned ~-1 ~0.0625 ~1 if predicate atrium:percentage_chances/0.01_p run function atrium:misc/block_state/grow_water_crops_1_age
# WEST x = -1
execute at @e[tag=atrium_water_sigil_dummy] positioned ~-1 ~0.0625 ~ if predicate atrium:percentage_chances/0.01_p run function atrium:misc/block_state/grow_water_crops_1_age
# NORTH WEST x = -1, z = -1
execute at @e[tag=atrium_water_sigil_dummy] positioned ~-1 ~0.0625 ~-1 if predicate atrium:percentage_chances/0.01_p run function atrium:misc/block_state/grow_water_crops_1_age
