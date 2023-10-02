# Remove head item
item replace entity @s armor.legs with minecraft:air
# Particles
particle minecraft:large_smoke ~ ~0.5 ~ 0.25 0.25 0.25 0 5
# Sound
playsound minecraft:block.fire.extinguish player @a[distance=..7] ~ ~ ~ 0.75 1.5 0.1
# Reset score
scoreboard players set @s atrium_omen_of_xenos_anomaly 301
# Damage
damage @s 4 minecraft:wither