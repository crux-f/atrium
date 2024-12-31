# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/entity_abilities/hurt_lich
#
# Each time you hurt the Lich, it searches for another minute (in addition to the 3 minutes it already looks for you).
# execute at @s as @e[tag=atrium_lich,nbt=!{HurtTime:0s},sort=nearest,tag=atrium_alerted] run scoreboard players remove @s atrium_searching 1200
#
# Lich is alerted to danger (see atrium:structures/sanctum/behavior_scripts/lich_manager for more details)
execute at @s run tag @e[tag=atrium_lich,nbt=!{HurtTime:0s},sort=nearest,tag=!atrium_alerted] add atrium_alerted
#
# If the player is invisible, there is a 40% chance the Lich will dispel their invisibility (allowing combat to begin)
execute if predicate atrium:effects/if_invisibility_any if predicate atrium:percentage_chances/0.40_p run function atrium:structures/sanctum/behavior_scripts/invisibility_purge
#
# Play Lich hurt sound
execute at @s at @e[tag=atrium_lich,nbt=!{HurtTime:0s},sort=nearest] run playsound minecraft:entity.wither.hurt hostile @a[distance=..15] ~ ~ ~ 0.75 0.35 0.1
# Add 1 to Lich's Threat Level (see atrium:structures/sanctum/behavior_scripts/lich_manager for more details)
execute at @s as @e[tag=atrium_lich,nbt=!{HurtTime:0s},sort=nearest] run scoreboard players add @s atrium_threat 1