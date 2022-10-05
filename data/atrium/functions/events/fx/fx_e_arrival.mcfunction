# For the cutscene!
execute positioned 35067.5 103 -4752.5 run particle minecraft:flash ~ ~ ~ 1 1 1 1 10 normal
execute positioned 35067.5 103 -4752.5 run particle minecraft:dust -10 -10 -10 3 ~ ~ ~ 1 1 1 1 30 normal
execute positioned 35067.5 103 -4752.5 run playsound minecraft:entity.elder_guardian.curse master @a[distance=..25] ~ ~ ~ 0.1 1.5 0.01
# runs every half second until stopped by another script
schedule function atrium:events/fx/fx_e_arrival 10t
