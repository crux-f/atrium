# Particles unless trader defense golem is already nearby
execute at @s positioned ^ ^ ^3 at @e[limit=1,type=minecraft:wandering_trader,distance=..3] unless entity @e[tag=trader_defense_golem,distance=..10] run particle minecraft:poof ~ ~1.5 ~ 0.1 0.1 0.1 0.5 75 normal
# Summon trader defense golem unless one is already nearby
execute at @s positioned ^ ^ ^3 at @e[limit=1,type=minecraft:wandering_trader,distance=..3] unless entity @e[tag=trader_defense_golem,distance=..10] run summon iron_golem ~ ~ ~ {DeathLootTable:"minecraft:empty",PersistenceRequired:1b,Health:200f,PlayerCreated:0b,AngerTime:999999999,Tags:["trader_defense_golem"],ActiveEffects:[{Id:5b,Amplifier:0b,Duration:2400,ShowParticles:1b}],Attributes:[{Name:generic.max_health,Base:200},{Name:generic.follow_range,Base:80},{Name:generic.movement_speed,Base:0.35}]}
# Cause golem to be hostile to the player that harmed the trader
execute at @s positioned ^ ^ ^3 run data modify entity @e[limit=1,tag=trader_defense_golem,distance=..5,sort=nearest] AngryAt set from entity @s UUID
# Revoke advancement to allow to trigger again
advancement revoke @s only atrium:triggers/random_events/trader_defense_golem
