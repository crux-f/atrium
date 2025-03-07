# Remove head item
item replace entity @s armor.feet with minecraft:air
# Particles
particle minecraft:large_smoke ~ ~ ~ 0.25 0.25 0.25 0 5
# Sound
playsound minecraft:block.fire.extinguish player @a[distance=..7] ~ ~ ~ 0.75 1.5 0.1
# Reset score
scoreboard players reset @s atrium_omen_of_xenos_anomaly
# Damage
damage @s 2 minecraft:wither