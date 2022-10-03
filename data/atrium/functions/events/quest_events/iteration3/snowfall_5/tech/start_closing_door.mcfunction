# Start closing door to residential area
execute positioned 35075.5 143 -4781.5 run playsound minecraft:block.chain.place master @a[distance=..25] ~ ~ ~ 1 0.5 0.5
#
schedule function atrium:events/quest_events/iteration3/snowfall_5/tech/door_close_1 8t