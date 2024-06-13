# Particle animation
execute at @e[tag=atrium_fire_sigil_dummy] run particle flame ^0.5 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=atrium_fire_sigil_dummy] run particle flame ^-0.5 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=atrium_fire_sigil_dummy] run particle flame ^ ^ ^0.5 0 0 0 0 1 normal
execute at @e[tag=atrium_fire_sigil_dummy] run particle flame ^ ^ ^-0.5 0 0 0 0 1 normal
execute as @e[tag=atrium_fire_sigil_dummy] at @s run tp @s ~ ~ ~ ~-2 ~0
# LEVEL 3 ONLY: Secondary particle ring that rotates the other direction
execute at @e[tag=atrium_fire_sigil_dummy_s] run particle small_flame ^0.25 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=atrium_fire_sigil_dummy_s] run particle small_flame ^-0.25 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=atrium_fire_sigil_dummy_s] run particle small_flame ^ ^ ^0.25 0 0 0 0 1 normal
execute at @e[tag=atrium_fire_sigil_dummy_s] run particle small_flame ^ ^ ^-0.25 0 0 0 0 1 normal
execute at @e[tag=atrium_fire_sigil_dummy_s] run particle flame ^2.75 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=atrium_fire_sigil_dummy_s] run particle flame ^-2.75 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=atrium_fire_sigil_dummy_s] run particle flame ^ ^ ^2.75 0 0 0 0 1 normal
execute at @e[tag=atrium_fire_sigil_dummy_s] run particle flame ^ ^ ^-2.75 0 0 0 0 1 normal
execute as @e[tag=atrium_fire_sigil_dummy_s] at @s run tp @s ~ ~ ~ ~2 ~0
# At the end of the sigil's duration...
# Visual effects + SFX
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239}] at @e[tag=atrium_fire_sigil_dummy] run particle minecraft:lava ~ ~ ~ 0.8 0.8 0.8 0.1 150
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239}] at @e[tag=atrium_fire_sigil_dummy] run playsound minecraft:entity.blaze.shoot player @a[distance=..30] ~ ~ ~ 1.5 0.6 0.1
# Fireballs fire directly downwards very quickly (creating the appearance of the sigil bursting into flame)
# Base area
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239}] at @e[tag=atrium_fire_sigil_dummy] run summon small_fireball ~ ~2 ~ {power:[0.0,-10.0,0.0]}
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239}] at @e[tag=atrium_fire_sigil_dummy] run summon small_fireball ~1 ~2 ~ {power:[0.0,-10.0,0.0]}
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239}] at @e[tag=atrium_fire_sigil_dummy] run summon small_fireball ~ ~2 ~1 {power:[0.0,-10.0,0.0]}
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239}] at @e[tag=atrium_fire_sigil_dummy] run summon small_fireball ~-1 ~2 ~ {power:[0.0,-10.0,0.0]}
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239}] at @e[tag=atrium_fire_sigil_dummy] run summon small_fireball ~ ~2 ~-1 {power:[0.0,-10.0,0.0]}
# Level 2 and up = larger radius
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239},scores={charge=2..}] at @e[tag=atrium_fire_sigil_dummy] run summon small_fireball ~1 ~2 ~1 {power:[0.0,-10.0,0.0]}
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239},scores={charge=2..}] at @e[tag=atrium_fire_sigil_dummy] run summon small_fireball ~-1 ~2 ~1 {power:[0.0,-10.0,0.0]}
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239},scores={charge=2..}] at @e[tag=atrium_fire_sigil_dummy] run summon small_fireball ~1 ~2 ~-1 {power:[0.0,-10.0,0.0]}
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239},scores={charge=2..}] at @e[tag=atrium_fire_sigil_dummy] run summon small_fireball ~-1 ~2 ~-1 {power:[0.0,-10.0,0.0]}
#
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239},scores={charge=2..}] at @e[tag=atrium_fire_sigil_dummy] run summon small_fireball ~2 ~2 ~2 {power:[0.0,-10.0,0.0]}
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239},scores={charge=2..}] at @e[tag=atrium_fire_sigil_dummy] run summon small_fireball ~-2 ~2 ~2 {power:[0.0,-10.0,0.0]}
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239},scores={charge=2..}] at @e[tag=atrium_fire_sigil_dummy] run summon small_fireball ~2 ~2 ~-2 {power:[0.0,-10.0,0.0]}
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239},scores={charge=2..}] at @e[tag=atrium_fire_sigil_dummy] run summon small_fireball ~-2 ~2 ~-2 {power:[0.0,-10.0,0.0]}
# Level 3 = largest radius
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239},scores={charge=3..}] at @e[tag=atrium_fire_sigil_dummy] run summon small_fireball ~3 ~2 ~ {power:[0.0,-10.0,0.0]}
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239},scores={charge=3..}] at @e[tag=atrium_fire_sigil_dummy] run summon small_fireball ~-3 ~2 ~ {power:[0.0,-10.0,0.0]}
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239},scores={charge=3..}] at @e[tag=atrium_fire_sigil_dummy] run summon small_fireball ~ ~2 ~3 {power:[0.0,-10.0,0.0]}
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239},scores={charge=3..}] at @e[tag=atrium_fire_sigil_dummy] run summon small_fireball ~ ~2 ~-3 {power:[0.0,-10.0,0.0]}
#
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239},scores={charge=3..}] at @e[tag=atrium_fire_sigil_dummy] run summon small_fireball ~3 ~2 ~1 {power:[0.0,-10.0,0.0]}
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239},scores={charge=3..}] at @e[tag=atrium_fire_sigil_dummy] run summon small_fireball ~-3 ~2 ~1 {power:[0.0,-10.0,0.0]}
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239},scores={charge=3..}] at @e[tag=atrium_fire_sigil_dummy] run summon small_fireball ~3 ~2 ~-1 {power:[0.0,-10.0,0.0]}
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239},scores={charge=3..}] at @e[tag=atrium_fire_sigil_dummy] run summon small_fireball ~-3 ~2 ~-1 {power:[0.0,-10.0,0.0]}
#
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239},scores={charge=3..}] at @e[tag=atrium_fire_sigil_dummy] run summon small_fireball ~1 ~2 ~3 {power:[0.0,-10.0,0.0]}
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239},scores={charge=3..}] at @e[tag=atrium_fire_sigil_dummy] run summon small_fireball ~-1 ~2 ~3 {power:[0.0,-10.0,0.0]}
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239},scores={charge=3..}] at @e[tag=atrium_fire_sigil_dummy] run summon small_fireball ~1 ~2 ~-3 {power:[0.0,-10.0,0.0]}
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239},scores={charge=3..}] at @e[tag=atrium_fire_sigil_dummy] run summon small_fireball ~-1 ~2 ~-3 {power:[0.0,-10.0,0.0]}
#
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239},scores={charge=3..}] at @e[tag=atrium_fire_sigil_dummy] run summon small_fireball ~3 ~2 ~3 {power:[0.0,-10.0,0.0]}
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239},scores={charge=3..}] at @e[tag=atrium_fire_sigil_dummy] run summon small_fireball ~-3 ~2 ~3 {power:[0.0,-10.0,0.0]}
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239},scores={charge=3..}] at @e[tag=atrium_fire_sigil_dummy] run summon small_fireball ~3 ~2 ~-3 {power:[0.0,-10.0,0.0]}
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239},scores={charge=3..}] at @e[tag=atrium_fire_sigil_dummy] run summon small_fireball ~-3 ~2 ~-3 {power:[0.0,-10.0,0.0]}
#
# Remove the dummy
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239}] run kill @e[tag=atrium_fire_sigil_dummy]
#
# LEVEL 3 ONLY: Remove the secondary dummy
execute if entity @e[tag=atrium_fire_sigil,nbt={Age:239},scores={charge=3..}] run kill @e[tag=atrium_fire_sigil_dummy_s]
#
# Continue running the script until the sigil expires
execute if entity @e[tag=atrium_fire_sigil] run schedule function atrium:triggers/magic/spells/fire_sigil_repeat 1t

