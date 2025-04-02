# Escape spell.
tag @s add atrium_armada_ripcord_target
particle minecraft:flash ~ ~1.25 ~ 0.25 0.25 0.25 0.25 10 normal
playsound minecraft:entity.enderman.teleport hostile @a[distance=..7] ~ ~ ~ 1 1.25 0.1
tp @s @n[type=#minecraft:raiders,distance=..20,tag=!atrium_armada_ripcord_target]
tag @s remove atrium_armada_ripcord_target