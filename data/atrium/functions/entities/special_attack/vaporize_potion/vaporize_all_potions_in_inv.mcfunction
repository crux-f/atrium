# Vaporize all potions in the player's inventory
#
# Remove potions and store how many were removed
execute store result score @s same_tick_math run clear @s minecraft:potion
#
# Give empty bottles
execute at @s run summon item ~ ~ ~ {Tags:["bottle_pile"],PickupDelay:2,Item:{id:"minecraft:glass_bottle",Count:1b}}
execute store result entity @e[tag=bottle_pile,limit=1] Item.Count byte 1 run scoreboard players get @s same_tick_math
# reset 
scoreboard players reset @s same_tick_math
#
# SFX
playsound minecraft:block.fire.extinguish player @a[distance=..8] ~ ~ ~ 0.5 0.1 0.1