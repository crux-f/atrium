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
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:1b}}]} run summon area_effect_cloud ~ ~ ~ {Particle:"mycelium",Radius:1f,Duration:240,Tags:["atrium_earth_sigil"],Potion:"minecraft:empty",effects:[{id:"minecraft:haste",amplifier:0b,duration:2400,show_particles:1b}],CustomName:'{"text":"Earth Sigil I"}'}
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:2b}}]} run summon area_effect_cloud ~ ~ ~ {Particle:"mycelium",Radius:2f,Duration:480,Tags:["atrium_earth_sigil"],Potion:"minecraft:empty",effects:[{id:"minecraft:haste",amplifier:0b,duration:4800,show_particles:1b}],CustomName:'{"text":"Earth Sigil II"}'}
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run summon area_effect_cloud ~ ~ ~ {Particle:"mycelium",Radius:3f,Duration:720,Tags:["atrium_earth_sigil"],Potion:"minecraft:empty",effects:[{id:"minecraft:haste",amplifier:1b,duration:9600,show_particles:1b}],CustomName:'{"text":"Earth Sigil III"}'}
#
# LEVEL 3 ONLY: Summon another dummy to handle secondary particle animation
# First though, kill all the existing guys loaded that don't have a cloud (in case of people leaving it unloaded, letting the repeat script expire).
execute as @e[type=minecraft:armor_stand,tag=atrium_earth_sigil_dummy_s] at @s unless entity @e[tag=atrium_earth_sigil,distance=..5] run kill @s
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]}] run summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["atrium_earth_sigil_dummy_s"]}
# Run repeat script to handle extra particles (runs until no atrium_earth_sigil entities exist)
function atrium:triggers/magic/spells/earth_sigil_repeat
#
#
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete
