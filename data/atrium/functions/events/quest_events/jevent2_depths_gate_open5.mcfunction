execute positioned 6808.5 1 -8697.5 run playsound minecraft:block.grindstone.use master @a[distance=..30] ~ ~ ~ 1 0.5 0.1
setblock 6810 5 -8699 minecraft:air
setblock 6810 6 -8698 minecraft:air
setblock 6810 5 -8698 minecraft:rail[shape=east_west]
setblock 6810 5 -8697 minecraft:air
schedule function atrium:events/quest_events/jevent2_depths_gate_open6 1s
