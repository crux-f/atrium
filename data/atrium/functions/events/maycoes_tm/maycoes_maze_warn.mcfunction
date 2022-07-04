# summons the return point at a random player within 50 blocks that is in survival
execute at @e[tag=maycoes] run execute at @r[distance=..50,gamemode=survival] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["maze_return"]}
# particles and sound at that point
execute at @e[tag=maze_return] run particle minecraft:campfire_signal_smoke ~ ~1 ~ 0.1 0.1 0.1 0.05 30
execute at @e[tag=maze_return] run playsound minecraft:entity.evoker.prepare_summon master @a[distance=..30] ~ ~ ~ 0.7 0.6 0.2
# finish casting in 0.5 seconds
schedule function atrium:events/maycoes_tm/maycoes_maze_cast 1s

