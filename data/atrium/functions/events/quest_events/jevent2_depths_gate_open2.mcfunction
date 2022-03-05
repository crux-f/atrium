execute positioned 6808.5 1 -8697.5 run playsound minecraft:block.grindstone.use master @a[distance=..30] ~ ~ ~ 1 0.5 0.1
setblock 6808 4 -8697 minecraft:air
setblock 6808 3 -8697 minecraft:rail
schedule function atrium:events/quest_events/jevent2_depths_gate_open3 1s
