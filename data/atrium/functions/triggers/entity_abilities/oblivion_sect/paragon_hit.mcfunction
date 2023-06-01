# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/entity_abilities/oblivion_sect/paragon_hit
#
# All Tridents thrown by drowned within 10 blocks flare with energy
execute at @s at @e[type=minecraft:trident,distance=..10,nbt={pickup:0b}] unless entity @s[predicate=atrium:effects/amplifier/if_weakness_2] run particle minecraft:scrape ~ ~ ~ 0.1 0.25 0.1 1 15
execute at @s at @e[type=minecraft:trident,distance=..10,nbt={pickup:0b}] unless entity @s[predicate=atrium:effects/amplifier/if_weakness_2] run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..5] ~ ~ ~ 1 2 0.1
execute at @s at @e[type=minecraft:trident,distance=..10,nbt={pickup:0b}] unless entity @s[predicate=atrium:effects/amplifier/if_weakness_2] run summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:-0.01f,Duration:300,DurationOnUse:0,Color:2518402,Potion:"minecraft:empty",Effects:[{Id:18,Amplifier:1b,Duration:400,ShowParticles:1b}]}