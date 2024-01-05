# Casting particles
particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.3 0.3 0.3 0.05 70
# Casting sfx
playsound minecraft:entity.evoker.prepare_summon player @a[distance=..15] ~ ~ ~ 0.5 2 0.1
# Summon dummy to handle arrow deflection + particle animation
# First though, kill all the existing guys loaded that don't have a cloud (in case of people leaving it unloaded, letting the repeat script expire).
execute as @e[type=minecraft:armor_stand,tag=atrium_air_sigil_dummy] at @s unless entity @e[tag=atrium_air_sigil,distance=..5] run kill @s
summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["atrium_air_sigil_dummy"]}
#
# Duration of field, radius of field, and duration of entity effect upgrade based on spell level
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:1b}}]} run summon area_effect_cloud ~ ~ ~ {Particle:"cloud",Radius:1f,Duration:240,Tags:["atrium_air_sigil"],Potion:"minecraft:empty",effects:[{id:"minecraft:levitation",amplifier:2b,duration:45,show_particles:1b}],CustomName:'{"text":"Air Sigil I"}'}
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:2b}}]} run summon area_effect_cloud ~ ~ ~ {Particle:"cloud",Radius:2f,Duration:480,Tags:["atrium_air_sigil"],Potion:"minecraft:empty",effects:[{id:"minecraft:levitation",amplifier:2b,duration:65,show_particles:1b}],CustomName:'{"text":"Air Sigil II"}'}
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run summon area_effect_cloud ~ ~ ~ {Particle:"cloud",Radius:3f,Duration:720,Tags:["atrium_air_sigil"],Potion:"minecraft:empty",effects:[{id:"minecraft:levitation",amplifier:2b,duration:85,show_particles:1b}],CustomName:'{"text":"Air Sigil III"}'}
# Run repeat script to handle arrow deflection behavior + extra particles (runs until no atrium_air_sigil entities exist)
function atrium:triggers/magic/spells/air_sigil_repeat
#
#
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete
