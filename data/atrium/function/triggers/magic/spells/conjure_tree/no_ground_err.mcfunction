# Particles
particle minecraft:smoke ~ ~1.25 ~ 0.25 0.25 0.25 0 15 normal
# SFX
playsound minecraft:block.redstone_torch.burnout player @a[distance=..10] ~ ~ ~ 0.25 1 0.1
# Message
tellraw @s ["",{"text":"The spell fails to take root.","italic":true,"color":"gray"},{"text":"\n"},{"text":"(You can only conjure trees on surfaces that can support life.)","color":"yellow","hover_event":{"action":"show_text","value":"(Dirt, Grass Blocks, Mud, Coarse Dirt, Rooted Dirt, Podzol, Mycelium, Crimson Nylium, and Warped Nylium)"}}]