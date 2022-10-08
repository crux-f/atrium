execute positioned 35071.5 125 -4717.5 run playsound minecraft:block.chain.break master @a[distance=..50] ~ ~ ~ 1 0.1 0.5
#
# blocks
setblock 35072 135 -4720 minecraft:air
setblock 35072 135 -4719 minecraft:air
setblock 35072 135 -4718 minecraft:air
setblock 35072 135 -4717 minecraft:air
setblock 35072 135 -4716 minecraft:air
#
execute unless block 35075 137 -4773 minecraft:iron_block run schedule function atrium:events/quest_events/iteration3/snowfall_5/tech/big_door_7 5t