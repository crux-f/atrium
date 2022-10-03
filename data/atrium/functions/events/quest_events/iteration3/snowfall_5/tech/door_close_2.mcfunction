# Start opening door to residential area
execute positioned 35075.5 143 -4781.5 run playsound minecraft:block.grindstone.use master @a[distance=..25] ~ ~ ~ 1 0.35 0.5
#
# blocks
setblock 35074 143 -4781 minecraft:smooth_stone
setblock 35075 143 -4781 minecraft:smooth_stone
setblock 35076 143 -4781 minecraft:smooth_stone
#
setblock 35075 142 -4781 minecraft:chiseled_stone_bricks
#
schedule function atrium:events/quest_events/iteration3/snowfall_5/tech/door_close_3 10t