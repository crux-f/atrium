# Spread brittle bone disease from diseased humanoids to nearby humanoids (undead excluded)
execute at @e[tag=brittle_bone_disease] run tag @e[distance=..5,type=#atrium:humanoid_diseasable] add brittle_bone_disease
#
# Inform victim players of their new disease
title @a[tag=brittle_bone_disease,scores={brittle_bone_disease=0}] actionbar {"text":"You feel sick.","italic":true,"color":"gray"}
#
# Afflict humanoids diseased with brittle bone disease with weakness and mining fatigue for 12 seconds (level dependant on time diseased)
#
# Level 1 = under 2 hours
effect give @e[tag=brittle_bone_disease,scores={brittle_bone_disease=0..1440}] minecraft:weakness 30 0 false 
effect give @e[tag=brittle_bone_disease,scores={brittle_bone_disease=0..1440}] minecraft:mining_fatigue 30 0 false 
# Level 2 = 2-4 hours
effect give @e[tag=brittle_bone_disease,scores={brittle_bone_disease=1440..2880}] minecraft:weakness 30 1 false 
effect give @e[tag=brittle_bone_disease,scores={brittle_bone_disease=1440..2880}] minecraft:mining_fatigue 30 1 false 
# Level 3 = 4-10 hours
effect give @e[tag=brittle_bone_disease,scores={brittle_bone_disease=2880..7200}] minecraft:weakness 30 2 false 
effect give @e[tag=brittle_bone_disease,scores={brittle_bone_disease=2880..7200}] minecraft:mining_fatigue 30 2 false 
# Level 4 + Poison 1 = 10+ hours
effect give @e[tag=brittle_bone_disease,scores={brittle_bone_disease=7200..}] minecraft:weakness 30 3 false 
effect give @e[tag=brittle_bone_disease,scores={brittle_bone_disease=7200..}] minecraft:mining_fatigue 30 3 false 
effect give @e[tag=brittle_bone_disease,scores={brittle_bone_disease=7200..}] minecraft:poison 30 1 false 
#
# increase score
scoreboard players add @e[tag=brittle_bone_disease] brittle_bone_disease 1
#
# Cure entities with correct effects
tag @e[tag=brittle_bone_disease,predicate=atrium:effects/if_regeneration_any] remove brittle_bone_disease
#
# remove score from everyone not diseased
scoreboard players set @e[tag=!brittle_bone_disease] brittle_bone_disease 0
#
# Schdule function to run again in 10 seconds
schedule function atrium:environmental/disease_ticker 10s
