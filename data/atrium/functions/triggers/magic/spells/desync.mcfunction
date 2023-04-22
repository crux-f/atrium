# FX
execute anchored eyes run particle minecraft:cloud ~ ~ ~ 3 0 3 0.1 250
execute run playsound minecraft:item.bottle.fill_dragonbreath master @a[distance=..30] ~ ~ ~ 1 0.4 0.1
#
# Creates a ring of Slowness I that lingers for 30 seconds.
# In the center of the ring is a pool of Speed II that grows as long as it is applying the effect to someone (only grows to edges of ring before spell ends)
summon area_effect_cloud ~ ~ ~ {Tags:["atrium_desync_center"],Particle:"reverse_portal",ReapplicationDelay:20,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0.05f,Duration:600,DurationOnUse:0,Potion:"minecraft:empty",Effects:[{Id:1,Amplifier:1b,Duration:400,ShowParticles:0b}]}
summon area_effect_cloud ~3 ~ ~ {Tags:["atrium_desync_circle"],Particle:"nautilus",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:4200959,Potion:"minecraft:empty",Effects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:0b}]}
summon area_effect_cloud ~3 ~ ~1 {Tags:["atrium_desync_circle"],Particle:"nautilus",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:4200959,Potion:"minecraft:empty",Effects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:0b}]}
summon area_effect_cloud ~2 ~ ~2 {Tags:["atrium_desync_circle"],Particle:"nautilus",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:4200959,Potion:"minecraft:empty",Effects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:0b}]}
summon area_effect_cloud ~1 ~ ~3 {Tags:["atrium_desync_circle"],Particle:"nautilus",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:4200959,Potion:"minecraft:empty",Effects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:0b}]}
summon area_effect_cloud ~ ~ ~3 {Tags:["atrium_desync_circle"],Particle:"nautilus",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:4200959,Potion:"minecraft:empty",Effects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:0b}]}
summon area_effect_cloud ~-1 ~ ~3 {Tags:["atrium_desync_circle"],Particle:"nautilus",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:4200959,Potion:"minecraft:empty",Effects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:0b}]}
summon area_effect_cloud ~-2 ~ ~2 {Tags:["atrium_desync_circle"],Particle:"nautilus",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:4200959,Potion:"minecraft:empty",Effects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:0b}]}
summon area_effect_cloud ~-3 ~ ~1 {Tags:["atrium_desync_circle"],Particle:"nautilus",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:4200959,Potion:"minecraft:empty",Effects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:0b}]}
summon area_effect_cloud ~-3 ~ ~ {Tags:["atrium_desync_circle"],Particle:"nautilus",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:4200959,Potion:"minecraft:empty",Effects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:0b}]}
summon area_effect_cloud ~-3 ~ ~-1 {Tags:["atrium_desync_circle"],Particle:"nautilus",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:4200959,Potion:"minecraft:empty",Effects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:0b}]}
summon area_effect_cloud ~-2 ~ ~-2 {Tags:["atrium_desync_circle"],Particle:"nautilus",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:4200959,Potion:"minecraft:empty",Effects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:0b}]}
summon area_effect_cloud ~-1 ~ ~-3 {Tags:["atrium_desync_circle"],Particle:"nautilus",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:4200959,Potion:"minecraft:empty",Effects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:0b}]}
summon area_effect_cloud ~ ~ ~-3 {Tags:["atrium_desync_circle"],Particle:"nautilus",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:4200959,Potion:"minecraft:empty",Effects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:0b}]}
summon area_effect_cloud ~1 ~ ~-3 {Tags:["atrium_desync_circle"],Particle:"nautilus",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:4200959,Potion:"minecraft:empty",Effects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:0b}]}
summon area_effect_cloud ~2 ~ ~-2 {Tags:["atrium_desync_circle"],Particle:"nautilus",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:4200959,Potion:"minecraft:empty",Effects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:0b}]}
summon area_effect_cloud ~3 ~ ~-1 {Tags:["atrium_desync_circle"],Particle:"nautilus",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:4200959,Potion:"minecraft:empty",Effects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:0b}]}
# If the spell level is 2, change all the clouds to be Slowness II.
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:2b}}]} as @e[tag=atrium_desync_circle,distance=..5] run data modify entity @s Effects[0].Amplifier set value 1
# If the spell level is 3, change all the clouds to be Slowness III.
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} as @e[tag=atrium_desync_circle,distance=..5] run data modify entity @s Effects[0].Amplifier set value 2
#
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete
