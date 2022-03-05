execute at @e[predicate=atrium:if_blindness] run summon vex ^ ^ ^3 {Team:"maycoes",Health:2f,LifeTicks:100,CustomName:'{"text":"Hallucination","color":"dark_blue"}',HandItems:[{id:"minecraft:diamond_axe",Count:1b,HandDropChances:[0.000F,0.000F]},{}],Attributes:[{Name:generic.max_health,Base:10}]}
execute at @e[tag=maycoes] run particle minecraft:large_smoke ~ ~ ~ 0.5 1 0.5 0 40
execute at @e[tag=maycoes] run playsound minecraft:entity.illusioner.prepare_blindness master @a[distance=..65] ~ ~ ~ 0.7 1 0.3
execute at @e[tag=maycoes] run effect give @r[distance=..65,gamemode=survival] minecraft:blindness 3 0
