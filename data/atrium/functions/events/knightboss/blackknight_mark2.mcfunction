execute at @e[tag=marked] run particle minecraft:portal ~ ~ ~ 0.2 0.2 0.2 1 100 normal
execute at @e[tag=marked] run playsound minecraft:block.lodestone.place master @a[distance=..60] ~ ~ ~ 3 1.2 1
execute at @e[tag=marked] run summon area_effect_cloud ~ ~ ~ {Particle:"soul_fire_flame",CustomNameVisible:0b,Radius:3f,Duration:200,DurationOnUse:0.05f,Potion:"minecraft:empty",Effects:[{Id:7b,Amplifier:-1b,Duration:1,ShowParticles:0b}],CustomName:'{"text":"Soulfire","color":"aqua"}'}
effect give @e[tag=marked] minecraft:slowness 30 2
effect give @e[tag=marked] minecraft:weakness 30 2
tag @a remove marked
schedule function atrium:events/knightboss/blackknight_jump 30s

