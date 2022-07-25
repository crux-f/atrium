execute at @s run particle minecraft:cloud ~ ~ ~ 3 0 3 0.1 250
execute at @s run playsound minecraft:item.bottle.fill_dragonbreath master @a[distance=..30] ~ ~ ~ 1 0.4 0.1
# circle
execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:"reverse_portal",ReapplicationDelay:20,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0.05f,Duration:600,DurationOnUse:0,Potion:"minecraft:empty",Effects:[{Id:1,Amplifier:1b,Duration:400,ShowParticles:0b}]}
execute at @s run summon area_effect_cloud ~3 ~ ~ {Particle:"nautilus",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:4200959,Potion:"minecraft:empty",Effects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:0b}]}
execute at @s run summon area_effect_cloud ~3 ~ ~1 {Particle:"nautilus",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:4200959,Potion:"minecraft:empty",Effects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:0b}]}
execute at @s run summon area_effect_cloud ~2 ~ ~2 {Particle:"nautilus",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:4200959,Potion:"minecraft:empty",Effects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:0b}]}
execute at @s run summon area_effect_cloud ~1 ~ ~3 {Particle:"nautilus",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:4200959,Potion:"minecraft:empty",Effects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:0b}]}
execute at @s run summon area_effect_cloud ~ ~ ~3 {Particle:"nautilus",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:4200959,Potion:"minecraft:empty",Effects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:0b}]}
execute at @s run summon area_effect_cloud ~-1 ~ ~3 {Particle:"nautilus",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:4200959,Potion:"minecraft:empty",Effects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:0b}]}
execute at @s run summon area_effect_cloud ~-2 ~ ~2 {Particle:"nautilus",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:4200959,Potion:"minecraft:empty",Effects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:0b}]}
execute at @s run summon area_effect_cloud ~-3 ~ ~1 {Particle:"nautilus",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:4200959,Potion:"minecraft:empty",Effects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:0b}]}
execute at @s run summon area_effect_cloud ~-3 ~ ~ {Particle:"nautilus",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:4200959,Potion:"minecraft:empty",Effects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:0b}]}
execute at @s run summon area_effect_cloud ~-3 ~ ~-1 {Particle:"nautilus",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:4200959,Potion:"minecraft:empty",Effects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:0b}]}
execute at @s run summon area_effect_cloud ~-2 ~ ~-2 {Particle:"nautilus",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:4200959,Potion:"minecraft:empty",Effects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:0b}]}
execute at @s run summon area_effect_cloud ~-1 ~ ~-3 {Particle:"nautilus",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:4200959,Potion:"minecraft:empty",Effects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:0b}]}
execute at @s run summon area_effect_cloud ~ ~ ~-3 {Particle:"nautilus",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:4200959,Potion:"minecraft:empty",Effects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:0b}]}
execute at @s run summon area_effect_cloud ~1 ~ ~-3 {Particle:"nautilus",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:4200959,Potion:"minecraft:empty",Effects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:0b}]}
execute at @s run summon area_effect_cloud ~2 ~ ~-2 {Particle:"nautilus",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:4200959,Potion:"minecraft:empty",Effects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:0b}]}
execute at @s run summon area_effect_cloud ~3 ~ ~-1 {Particle:"nautilus",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:4200959,Potion:"minecraft:empty",Effects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:0b}]}
tag @a[predicate=atrium:desync_1_req] add desync_caster
clear @a[tag=desync_caster] minecraft:glowstone_dust 1
# Spell cleanup
function atrium:magic/magicitems/spell_cast_complete
tag @a[tag=desync_caster] remove desync_caster
