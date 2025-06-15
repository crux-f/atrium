# Cast by the Sect Aquamancer. Redirected from mob_spell_charge
#
# Floods a 3x3 area around every Drowned within 8 blocks.
#
# SFX
playsound minecraft:block.conduit.ambient.short hostile @a[distance=..15] ~ ~ ~ 1 1.75 0.5
# Particles
particle minecraft:bubble_column_up ~ ~1.25 ~ 0.1 0.1 0.1 1 75
particle dust_color_transition{from_color:[0.161,0.525,1.000],scale:1,to_color:[0.047,0.055,0.278]} ~ ~ ~ 0.5 0.5 0.5 0.2 50 normal
# Feet layer
execute at @e[type=minecraft:drowned,distance=..8] if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:water
execute at @e[type=minecraft:drowned,distance=..8] if block ~1 ~ ~ minecraft:air run setblock ~1 ~ ~ minecraft:water
execute at @e[type=minecraft:drowned,distance=..8] if block ~ ~ ~1 minecraft:air run setblock ~ ~ ~1 minecraft:water
execute at @e[type=minecraft:drowned,distance=..8] if block ~-1 ~ ~ minecraft:air run setblock ~-1 ~ ~ minecraft:water
execute at @e[type=minecraft:drowned,distance=..8] if block ~ ~ ~-1 minecraft:air run setblock ~ ~ ~-1 minecraft:water
execute at @e[type=minecraft:drowned,distance=..8] if block ~1 ~ ~1 minecraft:air run setblock ~1 ~ ~1 minecraft:water
execute at @e[type=minecraft:drowned,distance=..8] if block ~-1 ~ ~1 minecraft:air run setblock ~-1 ~ ~1 minecraft:water
execute at @e[type=minecraft:drowned,distance=..8] if block ~1 ~ ~-1 minecraft:air run setblock ~1 ~ ~-1 minecraft:water
execute at @e[type=minecraft:drowned,distance=..8] if block ~-1 ~ ~-1 minecraft:air run setblock ~-1 ~ ~-1 minecraft:water
# Chest layer
execute at @e[type=minecraft:drowned,distance=..8] if block ~ ~1 ~ minecraft:air run setblock ~ ~1 ~ minecraft:water
execute at @e[type=minecraft:drowned,distance=..8] if block ~1 ~1 ~ minecraft:air run setblock ~1 ~1 ~ minecraft:water
execute at @e[type=minecraft:drowned,distance=..8] if block ~ ~1 ~1 minecraft:air run setblock ~ ~1 ~1 minecraft:water
execute at @e[type=minecraft:drowned,distance=..8] if block ~-1 ~1 ~ minecraft:air run setblock ~-1 ~1 ~ minecraft:water
execute at @e[type=minecraft:drowned,distance=..8] if block ~ ~1 ~-1 minecraft:air run setblock ~ ~1 ~-1 minecraft:water
execute at @e[type=minecraft:drowned,distance=..8] if block ~1 ~1 ~1 minecraft:air run setblock ~1 ~1 ~1 minecraft:water
execute at @e[type=minecraft:drowned,distance=..8] if block ~-1 ~1 ~1 minecraft:air run setblock ~-1 ~1 ~1 minecraft:water
execute at @e[type=minecraft:drowned,distance=..8] if block ~1 ~1 ~-1 minecraft:air run setblock ~1 ~1 ~-1 minecraft:water
execute at @e[type=minecraft:drowned,distance=..8] if block ~-1 ~1 ~-1 minecraft:air run setblock ~-1 ~1 ~-1 minecraft:water
# Head layer
execute at @e[type=minecraft:drowned,distance=..8] if block ~ ~2 ~ minecraft:air run setblock ~ ~2 ~ minecraft:water
execute at @e[type=minecraft:drowned,distance=..8] if block ~1 ~2 ~ minecraft:air run setblock ~1 ~2 ~ minecraft:water
execute at @e[type=minecraft:drowned,distance=..8] if block ~ ~2 ~1 minecraft:air run setblock ~ ~2 ~1 minecraft:water
execute at @e[type=minecraft:drowned,distance=..8] if block ~-1 ~2 ~ minecraft:air run setblock ~-1 ~2 ~ minecraft:water
execute at @e[type=minecraft:drowned,distance=..8] if block ~ ~2 ~-1 minecraft:air run setblock ~ ~2 ~-1 minecraft:water
execute at @e[type=minecraft:drowned,distance=..8] if block ~1 ~2 ~1 minecraft:air run setblock ~1 ~2 ~1 minecraft:water
execute at @e[type=minecraft:drowned,distance=..8] if block ~-1 ~2 ~1 minecraft:air run setblock ~-1 ~2 ~1 minecraft:water
execute at @e[type=minecraft:drowned,distance=..8] if block ~1 ~2 ~-1 minecraft:air run setblock ~1 ~2 ~-1 minecraft:water
execute at @e[type=minecraft:drowned,distance=..8] if block ~-1 ~2 ~-1 minecraft:air run setblock ~-1 ~2 ~-1 minecraft:water
#
# Reset score
scoreboard players set @s charge 0
# Chances for a longer cooldown
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 60
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 60
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 60
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 40
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 40
#
# Run Mob Spell cleanup
function atrium:entities/mob_spells/mob_spell_cast_complete
#
# If spell cleanup broke the staff, remove the atrium_special tag.
execute if entity @s[nbt=!{equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff:1b}}}}}] run tag @s remove atrium_special
