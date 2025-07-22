# Shows the crafter that the codex has been tampered with.
execute positioned ~ ~0.80 ~ run particle minecraft:smoke ~ ~ ~ 0 0.1 0 0.1 50 normal
playsound minecraft:block.redstone_torch.burnout block @a[distance=..5] ~ ~ ~ 0.25 1 0.01
execute positioned ~ ~ ~-7 run tellraw @p[gamemode=!spectator] {"text":"(The lab is damaged. It requires its brewing stand, copper trapdoors, and decorated pot to function.)","italic":true,"color":"red"}