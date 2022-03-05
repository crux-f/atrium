# Sounds
execute at @e[tag=maycoes] run playsound minecraft:entity.husk.ambient master @a[distance=..30] ~ ~ ~ 2 0.1 0.7
# summon hallucinations
execute at @e[tag=maycoes] run summon vex ~ ~-5 ~ {Silent:1b,AbsorptionAmount:5f,LifeTicks:400,CustomName:'{"text":"Hallucination","color":"yellow"}',HandItems:[{id:"minecraft:golden_sword",Count:1b},{}],HandDropChances:[0.000F,0.085F]}
execute at @e[tag=maycoes] run summon vex ~ ~-5 ~ {Silent:1b,AbsorptionAmount:5f,LifeTicks:400,CustomName:'{"text":"Hallucination","color":"yellow"}',HandItems:[{id:"minecraft:golden_sword",Count:1b},{}],HandDropChances:[0.000F,0.085F]}
execute at @e[tag=maycoes] run summon vex ~ ~-5 ~ {Silent:1b,AbsorptionAmount:5f,LifeTicks:400,CustomName:'{"text":"Hallucination","color":"yellow"}',HandItems:[{id:"minecraft:golden_sword",Count:1b},{}],HandDropChances:[0.000F,0.085F]}
execute at @e[tag=maycoes] run summon vex ~ ~-5 ~ {Silent:1b,AbsorptionAmount:5f,LifeTicks:400,CustomName:'{"text":"Hallucination","color":"yellow"}',HandItems:[{id:"minecraft:golden_sword",Count:1b},{}],HandDropChances:[0.000F,0.085F]}
# enter darkness mode
function atrium:events/maycoes_tm/maycoes_darkness_repeat
