# tag swap. kinda pointless but it helps my brain for some reason
tag @e[tag=display_slime] add super_slime
tag @e[tag=display_slime] remove display_slime
# particles and sounds
execute at @e[tag=super_slime] run particle minecraft:dust 0.161 1.000 0.161 2 ~ ~ ~ 3 3 3 1 40 normal
execute at @e[tag=super_slime] run playsound minecraft:block.respawn_anchor.charge master @a[distance=..50] ~ ~ ~ 1 1.7 0.1 
# transform the former display_slime into the super_slime
# note: adding 50% or higher knockback resistance turns slimes into unstoppable killing machines in melee.
data merge entity @e[limit=1,tag=super_slime] {Invulnerable:0b,CustomNameVisible:1b,DeathLootTable:"atrium:super_slime",NoAI:0b,Health:250f,Size:6,Motion:[0.0,3.0,0.0],CustomName:'{"text":"Super Slime","color":"green"}',ActiveEffects:[{Id:8b,Amplifier:0b,Duration:199999980,ShowParticles:1b}],Attributes:[{Name:generic.max_health,Base:250},{Name:generic.follow_range,Base:150},{Name:generic.knockback_resistance,Base:0.1}]}
# advancement
advancement grant @a[tag=event] only atrium:now_theyre_angry
# start main boss script
function atrium:events/superslime_boss
# start boss ability script
schedule function atrium:events/superslime_abilities 25s
