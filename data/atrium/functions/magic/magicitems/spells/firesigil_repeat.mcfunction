execute at @e[tag=fx_firesigil] run particle flame ^0.5 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=fx_firesigil] run particle flame ^-0.5 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=fx_firesigil] run particle flame ^ ^ ^0.5 0 0 0 0 1 normal
execute at @e[tag=fx_firesigil] run particle flame ^ ^ ^-0.5 0 0 0 0 1 normal
execute as @e[tag=fx_firesigil] at @s run tp @s ~ ~ ~ ~-2 ~0
execute if entity @e[tag=firesigil,nbt={Age:239}] at @e[tag=fx_firesigil] run particle minecraft:lava ~ ~ ~ 0.8 0.8 0.8 0.1 150
execute if entity @e[tag=firesigil,nbt={Age:239}] at @e[tag=fx_firesigil] run playsound minecraft:entity.blaze.shoot player @a[distance=..30] ~ ~ ~ 1.5 0.6 0.1
execute if entity @e[tag=firesigil,nbt={Age:239}] at @e[tag=fx_firesigil] run summon small_fireball ~ ~2 ~ {direction:[0.0,-10.0,0.0],power:[0.0,-10.0,0.0]}
execute if entity @e[tag=firesigil,nbt={Age:239}] at @e[tag=fx_firesigil] run summon small_fireball ~1 ~2 ~ {direction:[0.0,-10.0,0.0],power:[0.0,-10.0,0.0]}
execute if entity @e[tag=firesigil,nbt={Age:239}] at @e[tag=fx_firesigil] run summon small_fireball ~ ~2 ~1 {direction:[0.0,-10.0,0.0],power:[0.0,-10.0,0.0]}
execute if entity @e[tag=firesigil,nbt={Age:239}] at @e[tag=fx_firesigil] run summon small_fireball ~-1 ~2 ~ {direction:[0.0,-10.0,0.0],power:[0.0,-10.0,0.0]}
execute if entity @e[tag=firesigil,nbt={Age:239}] at @e[tag=fx_firesigil] run summon small_fireball ~ ~2 ~-1 {direction:[0.0,-10.0,0.0],power:[0.0,-10.0,0.0]}
execute if entity @e[tag=firesigil,nbt={Age:239}] run kill @e[tag=fx_firesigil]
execute if entity @e[tag=firesigil] run schedule function atrium:magic/magicitems/spells/firesigil_repeat 1t
