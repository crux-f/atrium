# Remove the cookie and play eating effects again
# Play happy Allay sounds
execute as @e[type=minecraft:allay,nbt={HandItems:[{tag:{atrium_crescent_cookie:1b}}]}] at @s run playsound minecraft:entity.allay.item_thrown neutral @a[distance=..15] ~ ~ ~ 1.25 1 0.1
execute as @e[type=minecraft:allay,nbt={HandItems:[{tag:{atrium_crescent_cookie:1b}}]}] at @s run playsound minecraft:entity.generic.eat neutral @a[distance=..15] ~ ~ ~ 0.75 1.35 0.05
# Remove Crescent Cookie and display eating particles
execute as @e[type=minecraft:allay,nbt={HandItems:[{tag:{atrium_crescent_cookie:1b}}]}] at @s at @s run particle item cookie{CustomModelData:333201} ~ ~ ~ 0.25 0.25 0.25 0 5 normal
execute as @e[type=minecraft:allay,nbt={HandItems:[{tag:{atrium_crescent_cookie:1b}}]}] at @s run data remove entity @s HandItems[0]