# Revoke
advancement revoke @s only atrium:triggers/special_abilities/armada/kill_armada_45_p
#
# If there is a necromancer nearby, it uses Flash Animate.
execute at @s as @e[tag=armada_necromancer,distance=..20,predicate=atrium:mobs/targeting_player,limit=1] run tag @s add reaction_summon
execute if entity @e[tag=reaction_summon] at @s anchored eyes positioned ^ ^ ^1 run summon zombie_villager ~ ~ ~ {Team:"armada",Tags:["fx_animated"],ActiveEffects:[{Id:11,Amplifier:0b,Duration:600,ShowParticles:1b}],VillagerData:{level:99,profession:"minecraft:weaponsmith",type:"minecraft:taiga"},Offers:{}}
# FX
execute at @e[tag=reaction_summon] run playsound minecraft:entity.evoker.prepare_summon hostile @a[distance=..20] ~ ~ ~ 0.5 1.35 0.1
#
execute at @e[tag=fx_animated] run function atrium:summon/armada/behavior_scripts/sfx/undead_animate
#
# Remove tags
tag @e[tag=fx_animated] remove fx_animated
tag @e[tag=reaction_summon] remove reaction_summon