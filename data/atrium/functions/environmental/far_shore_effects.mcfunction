effect give @e[predicate=atrium:in_far_shores,predicate=atrium:light/if_cold,type=!#atrium:cold_immune] minecraft:wither 2 0 true
effect give @e[predicate=atrium:in_far_shores,type=!#atrium:cold_immune,predicate=atrium:in_water,predicate=atrium:light/if_cold] minecraft:wither 2 0 true
effect give @e[predicate=atrium:in_far_shores,type=!#atrium:cold_immune,predicate=atrium:in_water,predicate=atrium:light/if_cold] minecraft:wither 2 1 true
effect give @e[predicate=atrium:in_far_shores,type=!#atrium:cold_immune,predicate=atrium:in_snow] minecraft:slowness 2 2 true
execute at @e[predicate=atrium:in_far_shores,gamemode=spectator] run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
execute at @e[predicate=atrium:in_far_shores,gamemode=spectator] run effect give @e[distance=..3] minecraft:regeneration 2 1 false
schedule function atrium:environmental/far_shore_effects 1s
