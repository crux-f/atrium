# AS all players that meet the spell requirements run particles
execute as @a[predicate=atrium:increase_velocity_1_req] at @s anchored eyes run particle minecraft:poof ^-0.4 ^-0.05 ^0.5 0 0 0 0 4
# Give every caster who is sprinting speed 1 for 12 seconds, and every caster who is not sprinting jump boost 1 for 12 seconds.
effect give @a[predicate=atrium:increase_velocity_1_req,predicate=atrium:if_sprinting] minecraft:speed 60 1
effect give @a[predicate=atrium:increase_velocity_1_req,predicate=atrium:if_not_sprinting] minecraft:jump_boost 60 1
# Sound effect
execute as @a[predicate=atrium:increase_velocity_1_req] at @s run playsound minecraft:ui.toast.out player @a[distance=..30] ~ ~ ~ 15 0.8 1
# adds tag to take spell component and reset casting time
tag @a[predicate=atrium:increase_velocity_1_req] add increase_velocity_caster
clear @a[tag=increase_velocity_caster] minecraft:glowstone_dust 1
scoreboard players set @a[tag=increase_velocity_caster] airstaff 0
# removes tag
tag @a[tag=increase_velocity_caster] remove increase_velocity_caster
