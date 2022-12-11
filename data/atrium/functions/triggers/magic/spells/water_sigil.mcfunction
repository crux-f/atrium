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
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:1b}}]} run summon area_effect_cloud ~ ~ ~ {Particle:"splash",Radius:1.5f,Duration:1200,Tags:["atrium_water_sigil"],Potion:"minecraft:empty",RadiusPerTick:-0.001f,CustomName:'{"text":"Water Sigil I"}'}
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:2b}}]} run summon area_effect_cloud ~ ~ ~ {Particle:"splash",Radius:1.5f,Duration:2400,Tags:["atrium_water_sigil"],Potion:"minecraft:empty",RadiusPerTick:-0.0001f,CustomName:'{"text":"Water Sigil II"}'}
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run summon area_effect_cloud ~ ~ ~ {Particle:"splash",Radius:1.5f,Duration:4800,Tags:["atrium_water_sigil"],Potion:"minecraft:empty",RadiusPerTick:-0.00001f,CustomName:'{"text":"Water Sigil III"}'}
#
# Summon raincloud (cosmetic)
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:1b}}]} run summon area_effect_cloud ~ ~10 ~ {Particle:"rain",Radius:3f,Duration:1180}
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:1b}}]} run summon area_effect_cloud ~ ~10 ~ {Particle:"cloud",Radius:3f,Duration:1200}
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:2b}}]} run summon area_effect_cloud ~ ~10 ~ {Particle:"rain",Radius:3f,Duration:2380}
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:2b}}]} run summon area_effect_cloud ~ ~10 ~ {Particle:"cloud",Radius:3f,Duration:2400}
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run summon area_effect_cloud ~ ~10 ~ {Particle:"rain",Radius:3f,Duration:4780}
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run summon area_effect_cloud ~ ~10 ~ {Particle:"cloud",Radius:3f,Duration:4800}
#
# Run repeat script (runs until no "atrium_water_sigil" entities exist)
function atrium:triggers/magic/spells/water_sigil_repeat
#
#
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete
