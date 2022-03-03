execute at @e[tag=fx_lethargysigil] run particle end_rod ^0.5 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=fx_lethargysigil] run particle end_rod ^-0.5 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=fx_lethargysigil] run particle end_rod ^ ^ ^0.5 0 0 0 0 1 normal
execute at @e[tag=fx_lethargysigil] run particle end_rod ^ ^ ^-0.5 0 0 0 0 1 normal
execute as @e[tag=fx_lethargysigil] at @s run tp @s ~ ~ ~ ~-2 ~0
execute if entity @e[tag=lethargysigil,nbt={Age:239}] at @e[tag=fx_lethargysigil] run particle minecraft:dripping_obsidian_tear ~ ~ ~ 1.2 2 1.2 0.1 85
execute if entity @e[tag=lethargysigil,nbt={Age:239}] at @e[tag=fx_lethargysigil] run particle minecraft:flash ~ ~ ~ 0 0 0 0.1 85
execute if entity @e[tag=lethargysigil,nbt={Age:239}] at @e[tag=fx_lethargysigil] run playsound minecraft:block.respawn_anchor.deplete player @a[distance=..30] ~ ~ ~ 1 0.1 0.1
execute if entity @e[tag=lethargysigil,nbt={Age:239}] at @e[tag=fx_lethargysigil] run effect give @a[distance=..3,gamemode=!spectator] minecraft:slowness 30 1 true
execute if entity @e[tag=lethargysigil,nbt={Age:239}] at @e[tag=fx_lethargysigil] run effect give @a[distance=..3,gamemode=!spectator] minecraft:slow_falling 30 1 true
execute if entity @e[tag=lethargysigil,nbt={Age:239}] run kill @e[tag=fx_lethargysigil]
execute if entity @e[tag=lethargysigil] run schedule function atrium:magic/magicitems/spells/lethargysigil_repeat1 1t
