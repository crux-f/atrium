# Start opening door to residential area
execute positioned 35075.5 143 -4781.5 run playsound minecraft:block.grindstone.use master @a[distance=..25] ~ ~ ~ 1 0.35 0.5
#
# blocks
setblock 35074 144 -4781 minecraft:smooth_stone
setblock 35075 144 -4781 minecraft:smooth_stone
setblock 35076 144 -4781 minecraft:smooth_stone
#
setblock 35075 143 -4781 minecraft:chiseled_stone_bricks
setblock 35075 142 -4781 minecraft:smooth_stone
#
# once door is closed remove the lock on opening it again
setblock 35075 137 -4773 minecraft:air