# Rot forever in steak prison.
execute as @s in atrium:between_worlds run tp @s 33.5 100 3499.5
#
# ...
playsound minecraft:music_disc.13 master @a[distance=..50] 33.5 120 3499.5 1 0.1 0.75
#
# Revoke
advancement revoke @s only atrium:patreon/forbidden_steak
