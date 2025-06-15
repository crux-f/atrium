# Casting particles
particle minecraft:bubble_pop ~ ~3 ~ 1 2.5 1 0.1 100
# Casting sfx
playsound minecraft:block.bubble_column.upwards_inside player @a[distance=..30] ~ ~ ~ 1 2 0.1
# Summon dummy to handle particle animation
# First though, kill all the existing guys loaded that don't have a cloud (in case of people leaving it unloaded, letting the repeat script expire).
execute as @e[type=minecraft:armor_stand,tag=atrium_water_sigil_dummy] at @s unless entity @e[tag=atrium_water_sigil,distance=..5] run kill @s
summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["atrium_water_sigil_dummy"]}
#
# Duration upgrades based on spell level
execute if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:1b}}}}} run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName: {text:"Water Sigil I"}, Duration: 1200, Particle: {type: "minecraft:splash"}, Radius: 1.5f, RadiusPerTick: -0.001f, Tags: ["atrium_water_sigil"]}
execute if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}}} run summon area_effect_cloud ~ ~ ~ {CustomName: {text:"Water Sigil II"}, Duration: 2400, Particle: {type: "minecraft:splash"}, Radius: 1.5f, RadiusPerTick: -1.0E-4f, Tags: ["atrium_water_sigil"]}
execute if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}}} run summon area_effect_cloud ~ ~ ~ {CustomName: {text:"Water Sigil III"}, Duration: 4800, Particle: {type: "minecraft:splash"}, Radius: 1.5f, RadiusPerTick: -1.0E-5f, Tags: ["atrium_water_sigil"]}
#
# Summon raincloud (cosmetic)
execute if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:1b}}}}} run summon area_effect_cloud ~ ~10 ~ {Duration: 1180, Particle: {type: "minecraft:rain"}, Radius: 3.0f}
execute if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:1b}}}}} run summon area_effect_cloud ~ ~10 ~ {Duration: 1200, Particle: {type: "minecraft:cloud"}, Radius: 3.0f}
execute if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}}} run summon area_effect_cloud ~ ~10 ~ {Duration: 2380, Particle: {type: "minecraft:rain"}, Radius: 3.0f}
execute if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}}} run summon area_effect_cloud ~ ~10 ~ {Duration: 2400, Particle: {type: "minecraft:cloud"}, Radius: 3.0f}
execute if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}}} run summon area_effect_cloud ~ ~10 ~ {Duration: 5980, Particle: {type: "minecraft:rain"}, Radius: 3.0f}
execute if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}}} run summon area_effect_cloud ~ ~10 ~ {Duration: 6000, Particle: {type: "minecraft:cloud"}, Radius: 3.0f}
#
# Run repeat script (runs until no "atrium_water_sigil" entities exist)
function atrium:triggers/magic/spells/water_sigil_repeat
#
#
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete
