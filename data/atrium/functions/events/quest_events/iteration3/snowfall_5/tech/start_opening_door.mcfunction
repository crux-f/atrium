# Start opening door to residential area
execute positioned 35075.5 143 -4781.5 run playsound minecraft:ambient.cave master @a[distance=..25] ~ ~ ~ 1 1.5 0.5
#
schedule function atrium:events/quest_events/iteration3/snowfall_5/tech/door_open_1 2s