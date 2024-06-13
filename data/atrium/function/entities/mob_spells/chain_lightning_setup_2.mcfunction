# Same as the Voltaic Staff except ranged.
#
execute at @s run particle electric_spark ~ ~1.25 ~ 0.5 0.5 0.5 0.1 25 normal
# Set down an invisible marker, play sfx, particles
summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["atrium_chain_lightning_2_spell_warning"],CustomName:'{"text":"Thunderbolt Spell Warning","color":"yellow","italic":false}'}
particle minecraft:electric_spark ~ ~1 ~ 0.25 2 0.25 0.1 50 normal
# (0.1 speed so half of the particles move a little)
particle minecraft:electric_spark ~ ~1 ~ 0.25 0.5 0.25 0.1 50 normal
playsound minecraft:item.trident.thunder hostile @a[distance=..30] ~ ~ ~ 0.75 1.25 0.1
playsound minecraft:entity.lightning_bolt.thunder hostile @a[distance=..30] ~ ~ ~ 0.5 2 0.1
#
# Thunder and lightning, very very frightning
#
# Summon the bolt in 1 second.
schedule function atrium:entities/mob_spells/chain_lightning_summon_2 1s
# Reset score
scoreboard players set @s charge 0
# Chances for a longer cooldown
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 20
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 20