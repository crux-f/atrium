# I'm lazy so im doing this part manually.
execute at crux_f run particle minecraft:flash ~ ~ ~ 6 6 6 1 40 normal
execute at crux_f run particle minecraft:dust -10 -10 -10 3 ~ ~ ~ 6 6 6 1 40 normal
execute at crux_f run playsound minecraft:entity.elder_guardian.curse master @a[distance=..100] ~ ~ ~ 1 1 1 
schedule function atrium:events/fx/fx_airshiparrival 10t
