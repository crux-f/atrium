# Run when a player is below
execute at @s run summon minecraft:tnt ~ ~ ~ {fuse:45,explosion_power:6}
playsound minecraft:entity.tnt.primed hostile @a[distance=..20] ~ ~ ~ 1 0.75 0.25
damage @s 1 minecraft:explosion
tag @s remove atrium_has_bomb