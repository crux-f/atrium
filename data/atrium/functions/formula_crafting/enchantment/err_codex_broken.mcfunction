# Shows the crafter that the codex has been tampered with.
execute positioned ~ ~0.80 ~ run particle minecraft:smoke ~ ~ ~ 0 0.1 0 0.1 50 normal
playsound minecraft:block.redstone_torch.burnout block @a[distance=..5] ~ ~ ~ 0.25 1 0.01
execute positioned ~ ~ ~-7 run tellraw @p[gamemode=!spectator] {"text":"(The codex is damaged. It requires an Enchanting Table block and all eight item frames to function.)","italic":true,"color":"red"}