# Remove 1 Air Crystal (casting component cost)
clear @s minecraft:quartz{air_crystal:1b} 1
# Spell cleanup
execute as @s run function atrium:magic/magicitems/spell_cast_complete
#
# Set down an invisible marker, play sfx, particles
execute at @s run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["thunderbolt_spell_warning"],CustomName:'{"text":"Thunderbolt Spell Warning","color":"yellow","italic":false}'}
execute at @s run particle minecraft:electric_spark ~ ~1 ~ 0.25 0.5 0.25 0 50 normal
# (0.1 speed so half of the particles move a little)
execute at @s run particle minecraft:electric_spark ~ ~1 ~ 0.25 0.5 0.25 0.1 50 normal
execute at @s run playsound minecraft:item.trident.thunder player @a[distance=..30] ~ ~ ~ 0.75 0.75 0.1
execute at @s run playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..30] ~ ~ ~ 0.5 2 0.1
#
# Thunder and lightning, very very frightning
#
# Summon the bolt in 1 second.
schedule function atrium:magic/magicitems/spells/thunderbolt_summon 1s