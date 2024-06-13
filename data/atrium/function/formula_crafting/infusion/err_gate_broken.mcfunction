# Shows the crafter that the circle has been tampered with.
execute positioned ~ ~0.80 ~ run particle minecraft:smoke ~ ~ ~ 0 0.1 0 0.1 50 normal
playsound minecraft:block.redstone_torch.burnout block @a[distance=..5] ~ ~ ~ 0.25 1 0.01
execute positioned ~ ~ ~-7 run tellraw @p[gamemode=!spectator] {"text":"(The gate is damaged. It requires all of its stone blocks and its lodestone to function.)","italic":true,"color":"red"}