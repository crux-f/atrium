# Cast on the undead that is furthest away within 25 blocks
#
# Particles
particle soul_fire_flame ~ ~1.25 ~ 0.1 0.1 0.1 0 25
playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..50] ~ ~ ~ 1 1 0.25
execute at @e[type=#atrium:undead,distance=..25,limit=1,sort=furthest] run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"soul_fire_flame",CustomNameVisible:0b,ReapplicationDelay:20,Radius:0.75f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,Tags:["atrium_soul_pyre"],Potion:"minecraft:empty",Effects:[{Id:7,Amplifier:0b,Duration:1}],CustomName:'{"text":"Soul Pyre","color":"aqua","italic":false}'}
execute as @e[tag=atrium_soul_pyre] run data modify entity @s Owner set from entity @e[tag=atrium_lich,sort=nearest,limit=1]
# Reset score
scoreboard players set @s charge 0
# Chances for a longer cooldown
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 20
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 20
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 20