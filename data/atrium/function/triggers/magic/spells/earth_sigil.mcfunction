# Casting particles
particle minecraft:happy_villager ~ ~ ~ 0.3 0.3 0.3 0.05 70
# Casting sfx
playsound minecraft:entity.bat.takeoff player @a[distance=..30] ~ ~ ~ 0.3 1 0.1
# Summon dummy to handle particle animation
# First though, kill all the existing guys loaded that don't have a cloud (in case of people leaving it unloaded, letting the repeat script expire).
execute as @e[type=minecraft:armor_stand,tag=atrium_earth_sigil_dummy] at @s unless entity @e[tag=atrium_earth_sigil,distance=..5] run kill @s
summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["atrium_earth_sigil_dummy"]}
#
# Duration of field, radius of field, and duration of entity effect upgrade based on spell level
execute if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:1b}}}}} run summon area_effect_cloud ~ ~ ~ {CustomName: {text:"Earth Sigil I"}, Duration: 240, Particle: {type: "minecraft:mycelium"}, Radius: 1.0f, Tags: ["atrium_earth_sigil"], potion_contents: {custom_effects: [{amplifier: 0b, duration: 2400, id: "minecraft:haste", show_particles: 1b}]}}
execute if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}}} run summon area_effect_cloud ~ ~ ~ {CustomName: {text:"Earth Sigil II"}, Duration: 480, Particle: {type: "minecraft:mycelium"}, Radius: 2.0f, Tags: ["atrium_earth_sigil"], potion_contents: {custom_effects: [{amplifier: 0b, duration: 4800, id: "minecraft:haste", show_particles: 1b}]}}
execute if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}}} run summon area_effect_cloud ~ ~ ~ {CustomName: {text:"Earth Sigil III"}, Duration: 720, Particle: {type: "minecraft:mycelium"}, Radius: 3.0f, Tags: ["atrium_earth_sigil"], potion_contents: {custom_effects: [{amplifier: 1b, duration: 9600, id: "minecraft:haste", show_particles: 1b}]}}
#
# LEVEL 3 ONLY: Summon another dummy to handle secondary particle animation
# First though, kill all the existing guys loaded that don't have a cloud (in case of people leaving it unloaded, letting the repeat script expire).
execute as @e[type=minecraft:armor_stand,tag=atrium_earth_sigil_dummy_s] at @s unless entity @e[tag=atrium_earth_sigil,distance=..5] run kill @s
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}}}] run summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["atrium_earth_sigil_dummy_s"]}
# Run repeat script to handle extra particles (runs until no atrium_earth_sigil entities exist)
function atrium:triggers/magic/spells/earth_sigil_repeat
#
#
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete
