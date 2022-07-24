# 20x a second, there is a 5% chance that any animate entity within a 6-block radius of the marker has the ground erupt underneath them.
execute as @e[tag=eruption_spell_marker] at @s if entity @s[scores={eruption_spell=80..}] if predicate atrium:percentage_chances/0.10_p at @e[distance=..10,type=!#atrium:inanimate_entities,limit=1] run function atrium:magic/magicitems/spells/eruption_burst
# Summon a fireball to punish anyone in the lava rain (after it starts falling properly)
execute as @e[tag=eruption_spell_marker] at @s if entity @s[scores={eruption_spell=80..}] at @e[distance=..3,type=!#atrium:inanimate_entities] run summon small_fireball ~ ~5 ~ {power:[0.0,-10.0,0.0]}
# If the duration hasn't expired, keep tracking until it does.
execute if entity @e[tag=eruption_spell_marker,scores={eruption_spell=300..}] run kill @e[tag=eruption_spell_marker]
scoreboard players add @e[tag=eruption_spell_marker] eruption_spell 1
#
execute if entity @e[tag=eruption_spell_marker] run schedule function atrium:magic/magicitems/spells/eruption_repeat 1t