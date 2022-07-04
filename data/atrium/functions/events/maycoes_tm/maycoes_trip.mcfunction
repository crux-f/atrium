execute at @e[tag=maycoes] run execute at @e[predicate=atrium:if_sprinting,distance=..40,gamemode=survival] run particle minecraft:falling_obsidian_tear ~ ~ ~ 0.5 1 0.5 1 30
execute at @e[tag=maycoes] run execute at @e[predicate=atrium:if_sprinting,distance=..40,gamemode=survival] run playsound minecraft:block.slime_block.place master @a[distance=..10] ~ ~ ~ 1 0.9 0.1
execute at @e[tag=maycoes] run effect give @e[distance=..40,gamemode=survival,predicate=atrium:if_sprinting] minecraft:nausea 6 0
execute at @e[tag=maycoes] run effect give @e[distance=..40,gamemode=survival,predicate=atrium:if_sprinting] minecraft:slowness 6 0
