# Run after recharging
tag @s add atrium_has_bomb
particle explosion ~ ~ ~ 0 0 0 0.25 1 normal
playsound minecraft:item.flintandsteel.use hostile @a[distance=..15] ~ ~ ~ 0.75 0.1 0.1
scoreboard players reset @s charge