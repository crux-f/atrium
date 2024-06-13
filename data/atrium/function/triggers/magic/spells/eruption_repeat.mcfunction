# 20x a second, there is a 5% chance that any animate entity within a 6-block radius of the marker has the ground erupt underneath them.
execute as @e[tag=atrium_eruption_spell] at @s if entity @s[scores={charge=-1120..}] if predicate atrium:percentage_chances/0.12_p as @e[distance=..6,type=!#atrium:inanimate_entities,limit=1] at @s run function atrium:triggers/magic/spells/eruption_burst
# Summon a fireball to punish anyone in the lava rain (after it starts falling properly)
execute as @e[tag=atrium_eruption_spell] at @s if entity @s[scores={eruption_spell=-1120..}] if predicate atrium:percentage_chances/0.08_p at @e[distance=..6,type=!#atrium:inanimate_entities] run summon small_fireball ~ ~5 ~ {power:[0.0,-10.0,0.0]}
#
# If the duration hasn't expired, keep tracking until it does.
execute if entity @e[tag=atrium_eruption_spell] run schedule function atrium:triggers/magic/spells/eruption_repeat 1t