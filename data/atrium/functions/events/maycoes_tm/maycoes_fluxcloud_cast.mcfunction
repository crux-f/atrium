execute at @e[tag=maycoes_wilting_point] run summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Radius:0.5f,RadiusPerTick:0.1f,Duration:160,Color:5898375,Effects:[{Id:17b,Amplifier:3b,Duration:500},{Id:20b,Amplifier:2b,Duration:200,ShowParticles:1b}],CustomName:'{"text":"Flux Cloud","color":"dark_purple"}'}
execute at @e[tag=maycoes_wilting_point] run playsound minecraft:entity.zombie_villager.cure master @a[distance=..50] ~ ~ ~ 0.6 0.1 0.2
kill @e[tag=maycoes_wilting_point]


