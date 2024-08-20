# Shows the crafter that the codex has been tampered with.
execute positioned ~ ~0.80 ~ run particle minecraft:smoke ~ ~ ~ 0 0.025 0 0.1 15 normal
playsound minecraft:block.redstone_torch.burnout block @a[distance=..5] ~ ~ ~ 0.25 1 0.01
execute positioned ~ ~ ~-7 run tellraw @p[gamemode=!spectator] {"text":"(This item is already enchanted. Runic formulas cannot be applied to enchanted items.","italic":true,"color":"red"}