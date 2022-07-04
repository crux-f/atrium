# AS all players that meet the spell requirements run particles
execute as @a[predicate=atrium:stone_sprite_1_req] at @s anchored eyes run particle minecraft:happy_villager ^-0.4 ^-0.05 ^0.5 0 0 0 0 4
# Summon a stone sprite at your feet!
execute at @a[predicate=atrium:stone_sprite_1_req] run summon area_effect_cloud ~ ~ ~ {Particle:"mycelium",Radius:0.3f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:240,Potion:"minecraft:empty",Effects:[{Id:3b,Amplifier:0b,Duration:2400,ShowParticles:1b}]}
# Sound effect
execute as @a[predicate=atrium:stone_sprite_1_req] at @s run playsound minecraft:entity.bat.takeoff player @a[distance=..30] ~ ~ ~ 0.3 1 0.1
# adds tag to take spell component and reset casting time
tag @a[predicate=atrium:stone_sprite_1_req] add stone_sprite_caster
clear @a[tag=stone_sprite_caster] minecraft:glowstone_dust 1
scoreboard players set @a[tag=stone_sprite_caster] earthstaff 0
# removes tag
tag @a[tag=stone_sprite_caster] remove stone_sprite_caster
