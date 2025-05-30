# Set down an invisible marker, play sfx, particles
summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["atrium_thunderbolt_spell"],CustomName:{text:"Thunderbolt Spell Warning","color":"yellow","italic":false}}
particle minecraft:electric_spark ~ ~1 ~ 0.25 0.5 0.25 0 50 normal
# (0.1 speed so half of the particles move a little)
particle minecraft:electric_spark ~ ~1 ~ 0.25 0.5 0.25 0.1 50 normal
playsound minecraft:item.trident.thunder player @a[distance=..30] ~ ~ ~ 0.75 0.75 0.1
playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..30] ~ ~ ~ 0.5 2 0.1
#
# Thunder and lightning, very very frightning
#
# Summon the bolt in 1 second.
schedule function atrium:triggers/magic/spells/thunderbolt_summon 1s
#
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete