setblock 8767 68 -11606 air destroy
execute at @e[tag=display_slime] run playsound minecraft:block.glass.break master @a[distance=..60] 1.3 0.6 0.1
execute at @e[tag=display_slime] run kill @e[distance=..10,type=minecraft:item_frame]
schedule function atrium:events/fx/fx_superslime_spawn 1s
