# Ticks patreon_item score up once per second (activated by item_detect)
#
# Keeps absorbing 20 points of xp a second until you hold the correct component 
scoreboard players add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{shadow_knight6_item:1b}}]},level=1..] patreon_item 1
execute at @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{shadow_knight6_item:1b}}]},level=0] run playsound minecraft:block.redstone_torch.burnout player @a[distance=..30] ~ ~ ~ 1 2 0.1
execute at @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{shadow_knight6_item:1b}}]},level=2..] run playsound minecraft:entity.experience_orb.pickup player @a[distance=..30] ~ ~ ~ 0.5 2 0.1
xp add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{shadow_knight6_item:1b}}]}] -20 points
execute as @a[name=shadow_knight6,scores={patreon_item=3..}] at @s run function atrium:magic/magicitems/patreon/shadow_knight6_item_cast
