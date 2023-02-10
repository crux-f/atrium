# Shows the crafter that the cauldron has been tampered with.
execute positioned ~ ~0.80 ~ run particle minecraft:smoke ~ ~ ~ 0 0.1 0 0.1 50 normal
playsound minecraft:block.redstone_torch.burnout block @a[distance=..5] ~ ~ ~ 0.25 1 0.01
execute positioned ~ ~ ~-7 run tellraw @p[gamemode=!spectator] {"text":"(The cauldron is damaged. It requires a Cauldron block and all four item frames to function.)","italic":true,"color":"red"}