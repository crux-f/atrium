# AS all players that meet the spell requirements run particles
execute as @a[predicate=atrium:stone_sprite_2_req] at @s anchored eyes run particle minecraft:happy_villager ^-0.4 ^-0.05 ^0.5 0 0 0 0 4
# Summon a stone sprite at your feet!
execute at @a[predicate=atrium:stone_sprite_2_req] run summon area_effect_cloud ~ ~ ~ {Particle:"mycelium",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:480,Potion:"minecraft:empty",Effects:[{Id:3,Amplifier:1b,Duration:4800,ShowParticles:1b}]}
# Sound effect
execute as @a[predicate=atrium:stone_sprite_2_req] at @s run playsound minecraft:entity.bat.takeoff player @a[distance=..30] ~ ~ ~ 0.3 0.9 0.1
# adds tag to take spell component and reset casting time
tag @a[predicate=atrium:stone_sprite_2_req] add stone_sprite_caster
clear @a[tag=stone_sprite_caster] minecraft:glowstone_dust 1
scoreboard players set @a[tag=stone_sprite_caster] earthstaff 0
# removes tag
tag @a[tag=stone_sprite_caster] remove stone_sprite_caster
