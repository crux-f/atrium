# Casting particles
particle minecraft:flame ~ ~ ~ 0.3 0.3 0.3 0.1 70
# Casting sfx
playsound minecraft:block.redstone_torch.burnout player @a[distance=..30] ~ ~ ~ 1.2 0.6 0.1
# Summon dummy to handle particle animation
# First though, kill all the existing guys loaded that don't have a cloud (in case of people leaving it unloaded, letting the repeat script expire).
execute as @e[type=minecraft:armor_stand,tag=atrium_fire_sigil_dummy] at @s unless entity @e[tag=atrium_fire_sigil,distance=..5] run kill @s
summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["atrium_fire_sigil_dummy"]}
#
# Radius of field upgrades based on spell level
execute if data entity @s {Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:1b}}}]} run summon area_effect_cloud ~ ~ ~ {CustomName: '{"text":"Fire Sigil I"}', CustomNameVisible: 0b, Duration: 240, Particle: {type: "minecraft:smoke"}, Radius: 1.0f, Tags: ["atrium_fire_sigil"], potion_contents: {potion: "minecraft:empty"}}
execute if data entity @s {Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}]} run summon area_effect_cloud ~ ~ ~ {CustomName: '{"text":"Fire Sigil II"}', CustomNameVisible: 0b, Duration: 240, Particle: {type: "minecraft:smoke"}, Radius: 2.0f, Tags: ["atrium_fire_sigil"], potion_contents: {potion: "minecraft:empty"}}
execute if data entity @s {Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}]} run summon area_effect_cloud ~ ~ ~ {CustomName: '{"text":"Fire Sigil III"}', CustomNameVisible: 0b, Duration: 240, Particle: {type: "minecraft:smoke"}, Radius: 3.0f, Tags: ["atrium_fire_sigil"], potion_contents: {potion: "minecraft:empty"}}
# Set the 'charge' score of the new sigil to the spell level.
execute if data entity @s {Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:1b}}}]} run scoreboard players set @e[tag=atrium_fire_sigil,distance=..1,sort=nearest] charge 1
execute if data entity @s {Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}]} run scoreboard players set @e[tag=atrium_fire_sigil,distance=..1,sort=nearest] charge 2
execute if data entity @s {Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}]} run scoreboard players set @e[tag=atrium_fire_sigil,distance=..1,sort=nearest] charge 3
#
# LEVEL 3 ONLY: Summon another dummy to handle secondary particle animation
# First though, kill all the existing guys loaded that don't have a cloud (in case of people leaving it unloaded, letting the repeat script expire).
execute as @e[type=minecraft:armor_stand,tag=atrium_fire_sigil_dummy_s] at @s unless entity @e[tag=atrium_fire_sigil,distance=..5] run kill @s
execute if entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}]}] run summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["atrium_fire_sigil_dummy_s"]}
#
# Run repeat script. Sigil triggers when area effect cloud runs out.
function atrium:triggers/magic/spells/fire_sigil_repeat
#
#
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete
