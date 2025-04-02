# Summon 1 Armada Battlemage
summon evoker ~ ~ ~ {Team:"atrium_armada",PersistenceRequired:1b,Health:42f,Tags:["atrium_armada_battle_mage"],CustomName:'{"text":"Armada Battle-Mage","color":"yellow","italic":false}',HandItems:[{id:"minecraft:firework_star",count:1,components:{"minecraft:custom_model_data":{strings:["atrium_ps_throw_flames"]}}},{id:"minecraft:firework_star",count:1,components:{"minecraft:custom_model_data":{strings:["atrium_ps_throw_flames"]}}}],HandDropChances:[-327.67F,-327.67F],ArmorItems:[{},{},{},{id:"minecraft:purple_dye",count:1,components:{"minecraft:custom_model_data":{strings:["atrium_armada_warmage"]}}}],ArmorDropChances:[-327.67F,-327.67F,-327.67F,-327.67F],attributes:[{id:"max_health",base:42},{id:"follow_range",base:70},{id:"knockback_resistance",base:0.65},{id:"attack_knockback",base:2}]}
#
# Start behavior script if there's an event happening (ends when event ends for simplicity)
execute if entity @a[tag=event] run function atrium_events:summon/armada/behavior_scripts/battle_mage_repeat
# Visual effects
function atrium:summon/summon_poof