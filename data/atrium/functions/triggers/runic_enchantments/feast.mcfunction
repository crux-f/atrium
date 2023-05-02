# Revoke to allow retrigger
advancement revoke @s only atrium:triggers/runic_enchantments/feast
#
# Make terrible sounds
playsound minecraft:entity.generic.eat player @a[distance=..5] ~ ~ ~ 0.5 0.75 0.1
playsound minecraft:entity.player.burp player @a[distance=..5] ~ ~ ~ 0.5 0.75 0.1
#
# Particles...
execute anchored eyes positioned ^ ^-0.1 ^0.25 run particle minecraft:item minecraft:beef ~ ~ ~ 0.25 0.25 0.25 0 25
#
# Fill hunger bar roughly 2.5
effect give @s minecraft:saturation 3 1