execute positioned 457 87 856 as @a[distance=..5] run execute in atrium:meridian run tp @s -828.5 240 -338.5
execute in atrium:meridian positioned -828.5 240 -338.5 run title @a[distance=..10] title {"text":"\u261e Some Time Later... \u261c","color":"green"}
execute in atrium:meridian positioned -828.5 240 -338.5 run tellraw @a[distance=..10] ["",{"text":"[Captain Jingles]: ","color":"green"},{"text":"Well, here we are. Careful not to trip."}]
advancement grant @a[x=-828.5,y=240,z=-338.5,distance=..5] only atrium:meridian_root
