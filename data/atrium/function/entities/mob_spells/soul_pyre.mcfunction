# Cast on the undead that is furthest away within 25 blocks
#
# Particles

particle soul_fire_flame ~ ~1.25 ~ 0.1 0.1 0.1 0.5 25
effect give @s instant_damage 1 0 true
execute as @e[type=#atrium:undead,distance=..25,limit=1,sort=random,tag=!atrium_lich] run tag @s add atrium_soul_pyre_victim
execute at @e[tag=atrium_soul_pyre_victim] run playsound minecraft:entity.wither.break_block hostile @a[distance=..25] ~ ~ ~ 1 0.1 0.25
execute at @e[tag=atrium_soul_pyre_victim] run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"soul_fire_flame",CustomNameVisible:0b,ReapplicationDelay:20,Radius:1.25f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,Tags:["atrium_soul_pyre"],Potion:"minecraft:empty",Effects:[{Id:7,Amplifier:0b,Duration:1}],CustomName:'{"text":"Soul Pyre","color":"aqua","italic":false}'}
execute as @e[tag=atrium_soul_pyre] run data modify entity @s Owner set from entity @e[tag=atrium_lich,sort=nearest,limit=1]
kill @e[tag=atrium_soul_pyre_victim]
# Reset score
scoreboard players set @s charge 0
# Chances for a longer cooldown
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 20
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 20