# Used by the Living Battering Ram when it performs the Ravager's normal Roar attack to enhance it.
# Super Roar Particle
particle minecraft:sonic_boom ^ ^ ^2 0 0 0 0 5 normal
# Super Roar SFX
# playsound minecraft:entity.ravager.roar hostile @a[distance=..10] ~ ~ ~ 1.25 0.5 0.1
#
# Sonic Damage (because of inv. frames, this will only actually affect players that block the roar with their shield)
execute as @a[distance=..5] run damage @s 6 minecraft:sonic_boom by @n[type=ravager,tag=atrium_living_battering_ram,distance=..5]
#
execute positioned ^ ^ ^1 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
execute positioned ^1 ^ ^1 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
execute positioned ^-1 ^ ^1 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
#
execute positioned ^ ^1 ^1 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
execute positioned ^1 ^1 ^1 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
execute positioned ^-1 ^1 ^1 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
#
execute positioned ^ ^2 ^1 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
execute positioned ^1 ^2 ^1 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
execute positioned ^-1 ^2 ^1 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
#
execute positioned ^ ^ ^2 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
execute positioned ^1 ^ ^2 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
execute positioned ^-1 ^ ^2 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
#
execute positioned ^ ^1 ^2 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
execute positioned ^1 ^1 ^2 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
execute positioned ^-1 ^1 ^2 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
#
execute positioned ^ ^2 ^2 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
execute positioned ^1 ^2 ^2 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
execute positioned ^-1 ^2 ^2 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
#
execute positioned ^ ^ ^3 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
execute positioned ^1 ^ ^3 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
execute positioned ^-1 ^ ^3 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
#
execute positioned ^ ^1 ^3 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
execute positioned ^1 ^1 ^3 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
execute positioned ^-1 ^1 ^3 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
#
execute positioned ^ ^2 ^3 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
execute positioned ^1 ^2 ^3 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
execute positioned ^-1 ^2 ^3 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
#
execute positioned ^ ^ ^4 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
execute positioned ^1 ^ ^4 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
execute positioned ^-1 ^ ^4 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
#
execute positioned ^ ^1 ^4 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
execute positioned ^1 ^1 ^4 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
execute positioned ^-1 ^1 ^4 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
#
execute positioned ^ ^2 ^4 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
execute positioned ^1 ^2 ^4 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
execute positioned ^-1 ^2 ^4 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
#
execute positioned ^ ^ ^5 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
execute positioned ^1 ^ ^5 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
execute positioned ^-1 ^ ^5 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
#
execute positioned ^ ^1 ^5 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
execute positioned ^1 ^1 ^5 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
execute positioned ^-1 ^1 ^5 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
#
execute positioned ^ ^2 ^5 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
execute positioned ^1 ^2 ^5 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
execute positioned ^-1 ^2 ^5 unless block ~ ~ ~ #atrium_events:unsiegeable_blocks run function atrium_events:misc/siege_smash_block
#
