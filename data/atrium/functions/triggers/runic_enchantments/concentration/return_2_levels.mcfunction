# Return 2 level
xp add @s 2 levels
# Enchantment particles
execute at @s run particle minecraft:enchanted_hit ~ ~0.5 ~ 0.1 0.5 0.1 0.5 25
execute at @s run playsound minecraft:entity.experience_orb.pickup player @a[distance=..10] ~ ~ ~ 0.75 1 0.1