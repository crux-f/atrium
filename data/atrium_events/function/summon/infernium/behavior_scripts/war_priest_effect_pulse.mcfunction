# Pulse outward 10 blocks - On a entity-by-entity basis, 
# Enemies: if they don't have wither, they get Wither 1 for 10 seconds. If they already have Wither, they get Wither 2 for 10 seconds.
execute at @e[tag=atrium_infernium_war_priest] as @e[distance=..10,type=!#atrium:undead,predicate=atrium:effects/if_wither_any] run effect give @s minecraft:wither 10 1 false
execute at @e[tag=atrium_infernium_war_priest] as @e[distance=..10,type=!#atrium:undead,predicate=!atrium:effects/if_wither_any] run effect give @s minecraft:wither 10 0 false
# Allies: Grant Resistance 1.
execute at @e[tag=atrium_infernium_war_priest] run effect give @e[distance=..10,type=#atrium:undead] resistance 10 0 false
#
# Particles + SFX
execute at @e[tag=atrium_infernium_war_priest] run particle large_smoke ~ ~ ~ 1.5 1.25 1.5 0.1 60 normal
execute at @e[tag=atrium_infernium_war_priest] run playsound minecraft:entity.wither.break_block hostile @a[distance=..10] ~ ~ ~ 0.5 1.5 0.1
# Runs once every 10 seconds as long as there is at least one War Priest active.
execute if entity @e[tag=atrium_infernium_war_priest] run schedule function atrium_events:summon/infernium/behavior_scripts/war_priest_effect_pulse 10s