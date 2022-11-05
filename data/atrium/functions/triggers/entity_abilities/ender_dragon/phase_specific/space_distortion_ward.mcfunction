# Lasts until the specified timer entity is about to expire.
# In this case checking if the timer still exists will suffice.
#
execute in minecraft:the_end if entity @e[tag=atrium_dragon_ward_timer] run schedule function atrium:triggers/entity_abilities/ender_dragon/phase_specific/space_distortion_ward 1t
# Particles to indicate the ward is active
execute in minecraft:the_end at @e[type=minecraft:ender_dragon] run particle minecraft:portal ~ ~1.25 ~ 0 0 0 1 50 normal
# Play a sound and show particles at the ward's next teleport target
execute in minecraft:the_end at @e[type=minecraft:ender_dragon] at @e[type=#minecraft:arrows,distance=..8] run particle minecraft:reverse_portal ~ ~ ~ 0 0 0 2 50 normal
execute in minecraft:the_end at @e[type=minecraft:ender_dragon] at @e[type=#minecraft:arrows,distance=..8] run playsound minecraft:entity.enderman.teleport block @a[distance=..15] ~ ~ ~ 0.5 1.75 0.1
#
# Once the dragon roars (Phase 7), if there are players within 15 blocks of it, it inflicts fear effects on them and ends the distortion ward.
# If not, it sets the ward to last an additional 1 minute (allowing it to last until the dragon enters Phase 8, its "charge" mode- during which the ward gains new abilities)
#
execute in minecraft:the_end at @e[type=minecraft:ender_dragon,nbt={DragonPhase:7}] as @a[gamemode=!spectator,distance=..15] if entity @s run function atrium:triggers/entity_abilities/ender_dragon/phase_specific/dragon_roar_fear
execute in minecraft:the_end at @e[type=minecraft:ender_dragon,nbt={DragonPhase:7}] as @a[gamemode=!spectator,distance=..15] unless entity @s run data modify entity @e[limit=1,tag=atrium_dragon_ward_timer] Duration set value 1200
#
# If the dragon decides to charge the player (Phase 8), the ward allows the dragon to chain-bomb the ground beneath it with fireballs during its charge.
# (15% chance each tick to spawn a dragon fireball that shoots straight down)
execute in minecraft:the_end at @e[type=minecraft:ender_dragon,nbt={DragonPhase:8}] anchored eyes run particle minecraft:dragon_breath ^ ^ ^ 0.25 0.25 0.25 0.25 25 normal
execute in minecraft:the_end at @e[type=minecraft:ender_dragon,nbt={DragonPhase:8}] anchored eyes if predicate atrium:percentage_chances/0.15_p run function atrium:triggers/entity_abilities/ender_dragon/phase_specific/dragon_fireball_rain
execute in minecraft:the_end at @e[type=minecraft:ender_dragon,nbt={DragonPhase:8}] anchored eyes as @e[type=minecraft:dragon_fireball,distance=..1] run data modify entity @s Owner set from entity @e[type=minecraft:ender_dragon,limit=1] UUID
#
# Teleport the entity to behind a random player within a 50-block radius.
execute in minecraft:the_end at @e[type=minecraft:ender_dragon] as @e[type=#minecraft:arrows,distance=..8] anchored eyes at @e[limit=1,sort=random,distance=8.1..50,type=!ender_dragon,type=!#minecraft:arrows] run function atrium:triggers/entity_abilities/ender_dragon/phase_specific/space_distortion_ward_tp