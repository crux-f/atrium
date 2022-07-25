# AS all players that meet the spell requirements run particles
execute at @s anchored eyes run particle minecraft:happy_villager ^-0.4 ^-0.05 ^0.5 0 0 0 0 4
# Summon a stone sprite at your feet!
execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:"mycelium",Radius:0.3f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:240,Potion:"minecraft:empty",Effects:[{Id:3,Amplifier:0b,Duration:2400,ShowParticles:1b}]}
# Sound effect
execute at @s run playsound minecraft:entity.bat.takeoff player @a[distance=..30] ~ ~ ~ 0.3 1 0.1
clear @s minecraft:glowstone_dust 1
# Spell cleanup
execute as @s run function atrium:magic/magicitems/spell_cast_complete