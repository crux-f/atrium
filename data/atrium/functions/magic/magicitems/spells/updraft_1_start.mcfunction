execute as @a[predicate=atrium:updraft_1_req] at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.3 0.3 0.3 0.1 70
execute as @a[predicate=atrium:updraft_1_req] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"cloud",Radius:1f,Duration:240,Tags:["updraft"],Potion:"minecraft:empty",Effects:[{Id:25,Amplifier:3b,Duration:40,ShowParticles:0b}],CustomName:'{"text":"Updraft"}'}
execute as @a[predicate=atrium:updraft_1_req] at @s run playsound minecraft:entity.evoker.prepare_summon player @a[distance=..30] ~ ~ ~ 1 2 0.1
function atrium:magic/magicitems/spells/updraft_repeat
tag @a[predicate=atrium:updraft_1_req] add updraft_caster
clear @a[tag=updraft_caster] minecraft:redstone 1
scoreboard players set @a[tag=updraft_caster] airstaff 0
tag @a[tag=updraft_caster] remove updraft_caster
