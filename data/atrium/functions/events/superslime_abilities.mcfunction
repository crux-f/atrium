# adds 1 to the boss_phase counter on the boss.
scoreboard players add @e[tag=super_slime] boss_phase 1
# IF PHASE 1: spawns 3x Ooze Minions; play 1 sound and produce particles for each. If there are still slimes around it before it summons, enlarge them.
execute at @e[tag=super_slime,scores={boss_phase=1}] as @e[type=minecraft:slime,distance=..10,nbt={Size:0}] run data merge entity @s {Size:1}
execute at @e[tag=super_slime,scores={boss_phase=1}] as @e[type=minecraft:slime,distance=..10,nbt={Size:1}] run data merge entity @s {Size:2}
execute at @e[tag=super_slime,scores={boss_phase=1}] as @e[type=minecraft:slime,distance=..10,nbt={Size:2}] run data merge entity @s {Size:3}
execute at @e[tag=super_slime,scores={boss_phase=1}] as @e[type=minecraft:slime,distance=..10,nbt={Size:3}] run data merge entity @s {Size:4}
execute at @e[tag=super_slime,scores={boss_phase=1}] run summon slime ~ ~ ~ {PersistenceRequired:1b,Size:1,Tags:["ooze_minion"],ActiveEffects:[{Id:1b,Amplifier:0b,Duration:19999980,ShowParticles:1b},{Id:8b,Amplifier:0b,Duration:19999980,ShowParticles:1b}]}
execute at @e[tag=super_slime,scores={boss_phase=1}] run summon slime ~ ~ ~ {PersistenceRequired:1b,Size:1,Tags:["ooze_minion"],ActiveEffects:[{Id:1b,Amplifier:0b,Duration:19999980,ShowParticles:1b},{Id:8b,Amplifier:0b,Duration:19999980,ShowParticles:1b}]}
execute at @e[tag=super_slime,scores={boss_phase=1}] run summon slime ~ ~ ~ {PersistenceRequired:1b,Size:1,Tags:["ooze_minion"],ActiveEffects:[{Id:1b,Amplifier:0b,Duration:19999980,ShowParticles:1b},{Id:8b,Amplifier:0b,Duration:19999980,ShowParticles:1b}]}
execute at @e[tag=super_slime,scores={boss_phase=1}] run playsound minecraft:entity.slime.squish master @a[distance=..30] ~ ~ ~ 2 0.05 0.5
execute at @e[tag=super_slime,scores={boss_phase=1}] run playsound minecraft:entity.slime.squish master @a[distance=..30] ~ ~ ~ 2 0.05 0.5
execute at @e[tag=super_slime,scores={boss_phase=1}] run playsound minecraft:entity.slime.squish master @a[distance=..30] ~ ~ ~ 2 0.05 0.5
execute at @e[tag=super_slime,scores={boss_phase=1}] run execute at @e[tag=ooze_minion,distance=..5] run particle minecraft:sneeze ^ ^ ^ 0.5 0.5 0.5 0.25 25 normal
#
# IF PHASE 2: throw 4 Slime Blocks out. They do damage if they land on you, and they have a puddle around them that slows and poisons.
execute at @e[tag=super_slime,scores={boss_phase=2}] run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:slime_block"},Time:1,DropItem:0b,HurtEntities:1b,FallHurtMax:35,Motion:[-0.5,0.2,-0.5],Passengers:[{id:"minecraft:area_effect_cloud",Particle:"sneeze",CustomNameVisible:0b,Radius:3.50f,RadiusPerTick:-0.01f,Duration:400,DurationOnUse:0f,Potion:"minecraft:empty",Effects:[{Id:2b,Amplifier:4b,Duration:100,ShowParticles:1b},{Id:19b,Amplifier:0b,Duration:100,ShowParticles:1b}],CustomName:'{"text":"Slime Puddle","color":"green","italic":false}'}]}
execute at @e[tag=super_slime,scores={boss_phase=2}] run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:slime_block"},Time:1,DropItem:0b,HurtEntities:1b,FallHurtMax:35,Motion:[0.5,0.2,-0.5],Passengers:[{id:"minecraft:area_effect_cloud",Particle:"sneeze",CustomNameVisible:0b,Radius:3.50f,RadiusPerTick:-0.01f,Duration:400,DurationOnUse:0f,Potion:"minecraft:empty",Effects:[{Id:2b,Amplifier:4b,Duration:100,ShowParticles:1b},{Id:19b,Amplifier:0b,Duration:100,ShowParticles:1b}],CustomName:'{"text":"Slime Puddle","color":"green","italic":false}'}]}
execute at @e[tag=super_slime,scores={boss_phase=2}] run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:slime_block"},Time:1,DropItem:0b,HurtEntities:1b,FallHurtMax:35,Motion:[-0.5,0.2,0.5],Passengers:[{id:"minecraft:area_effect_cloud",Particle:"sneeze",CustomNameVisible:0b,Radius:3.50f,RadiusPerTick:-0.01f,Duration:400,DurationOnUse:0f,Potion:"minecraft:empty",Effects:[{Id:2b,Amplifier:4b,Duration:100,ShowParticles:1b},{Id:19b,Amplifier:0b,Duration:100,ShowParticles:1b}],CustomName:'{"text":"Slime Puddle","color":"green","italic":false}'}]}
execute at @e[tag=super_slime,scores={boss_phase=2}] run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:slime_block"},Time:1,DropItem:0b,HurtEntities:1b,FallHurtMax:35,Motion:[0.5,0.2,0.5],Passengers:[{id:"minecraft:area_effect_cloud",Particle:"sneeze",CustomNameVisible:0b,Radius:3.50f,RadiusPerTick:-0.01f,Duration:400,DurationOnUse:0f,Potion:"minecraft:empty",Effects:[{Id:2b,Amplifier:4b,Duration:100,ShowParticles:1b},{Id:19b,Amplifier:0b,Duration:100,ShowParticles:1b}],CustomName:'{"text":"Slime Puddle","color":"green","italic":false}'}]}
execute at @e[tag=super_slime,scores={boss_phase=2}] run playsound minecraft:entity.slime.squish master @a[distance=..30] ~ ~ ~ 2 1.5 0.5
# continues to run every 18 seconds as long as the super_slime is alive
execute if entity @e[tag=super_slime] run schedule function atrium:events/superslime_abilities 18s
# if Phase 2 just ended, set back to 0.
scoreboard players set @e[tag=super_slime,scores={boss_phase=2}] boss_phase 0
