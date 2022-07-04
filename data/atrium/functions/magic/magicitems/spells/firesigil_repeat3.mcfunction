execute at @e[tag=fx_firesigil_3] run particle flame ^0.85 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=fx_firesigil_3] run particle flame ^-0.85 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=fx_firesigil_3] run particle flame ^ ^ ^0.85 0 0 0 0 1 normal
execute at @e[tag=fx_firesigil_3] run particle flame ^ ^ ^-0.85 0 0 0 0 1 normal
execute at @e[tag=fx_firesigil_3] run particle flame ^2 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=fx_firesigil_3] run particle flame ^-2 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=fx_firesigil_3] run particle flame ^ ^ ^2 0 0 0 0 1 normal
execute at @e[tag=fx_firesigil_3] run particle flame ^ ^ ^-2 0 0 0 0 1 normal
execute as @e[tag=fx_firesigil_3] at @s run tp @s ~ ~ ~ ~-2 ~0
execute at @e[tag=fx_firesigil_3_secondary] run particle small_flame ^0.25 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=fx_firesigil_3_secondary] run particle small_flame ^-0.25 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=fx_firesigil_3_secondary] run particle small_flame ^ ^ ^0.25 0 0 0 0 1 normal
execute at @e[tag=fx_firesigil_3_secondary] run particle small_flame ^ ^ ^-0.25 0 0 0 0 1 normal
execute at @e[tag=fx_firesigil_3_secondary] run particle flame ^2.75 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=fx_firesigil_3_secondary] run particle flame ^-2.75 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=fx_firesigil_3_secondary] run particle flame ^ ^ ^2.75 0 0 0 0 1 normal
execute at @e[tag=fx_firesigil_3_secondary] run particle flame ^ ^ ^-2.75 0 0 0 0 1 normal
execute as @e[tag=fx_firesigil_3_secondary] at @s run tp @s ~ ~ ~ ~2 ~0
execute if entity @e[tag=firesigil_3,nbt={Age:239}] at @e[tag=fx_firesigil_3] run particle minecraft:lava ~ ~ ~ 1.5 1.5 1.5 0.1 100
execute if entity @e[tag=firesigil_3,nbt={Age:239}] at @e[tag=fx_firesigil_3] run playsound minecraft:entity.blaze.shoot player @a[distance=..30] ~ ~ ~ 1.5 0.6 0.1
# original base 5
execute if entity @e[tag=firesigil_3,nbt={Age:239}] at @e[tag=fx_firesigil_3] run summon small_fireball ~ ~2 ~ {direction:[0.0,-10.0,0.0],power:[0.0,-10.0,0.0]}
execute if entity @e[tag=firesigil_3,nbt={Age:239}] at @e[tag=fx_firesigil_3] run summon small_fireball ~1 ~2 ~ {direction:[0.0,-10.0,0.0],power:[0.0,-10.0,0.0]}
execute if entity @e[tag=firesigil_3,nbt={Age:239}] at @e[tag=fx_firesigil_3] run summon small_fireball ~ ~2 ~1 {direction:[0.0,-10.0,0.0],power:[0.0,-10.0,0.0]}
execute if entity @e[tag=firesigil_3,nbt={Age:239}] at @e[tag=fx_firesigil_3] run summon small_fireball ~-1 ~2 ~ {direction:[0.0,-10.0,0.0],power:[0.0,-10.0,0.0]}
execute if entity @e[tag=firesigil_3,nbt={Age:239}] at @e[tag=fx_firesigil_3] run summon small_fireball ~ ~2 ~-1 {direction:[0.0,-10.0,0.0],power:[0.0,-10.0,0.0]}
# 
execute if entity @e[tag=firesigil_3,nbt={Age:239}] at @e[tag=fx_firesigil_3] run summon small_fireball ~2 ~2 ~2 {direction:[0.0,-10.0,0.0],power:[0.0,-10.0,0.0]}
execute if entity @e[tag=firesigil_3,nbt={Age:239}] at @e[tag=fx_firesigil_3] run summon small_fireball ~-2 ~2 ~2 {direction:[0.0,-10.0,0.0],power:[0.0,-10.0,0.0]}
execute if entity @e[tag=firesigil_3,nbt={Age:239}] at @e[tag=fx_firesigil_3] run summon small_fireball ~2 ~2 ~-2 {direction:[0.0,-10.0,0.0],power:[0.0,-10.0,0.0]}
execute if entity @e[tag=firesigil_3,nbt={Age:239}] at @e[tag=fx_firesigil_3] run summon small_fireball ~-2 ~2 ~-2 {direction:[0.0,-10.0,0.0],power:[0.0,-10.0,0.0]}
# 
execute if entity @e[tag=firesigil_3,nbt={Age:239}] at @e[tag=fx_firesigil_3] run summon small_fireball ~3 ~2 ~ {direction:[0.0,-20.0,0.0],power:[0.0,-10.0,0.0]}
execute if entity @e[tag=firesigil_3,nbt={Age:239}] at @e[tag=fx_firesigil_3] run summon small_fireball ~-3 ~2 ~ {direction:[0.0,-20.0,0.0],power:[0.0,-10.0,0.0]}
execute if entity @e[tag=firesigil_3,nbt={Age:239}] at @e[tag=fx_firesigil_3] run summon small_fireball ~ ~2 ~3 {direction:[0.0,-20.0,0.0],power:[0.0,-10.0,0.0]}
execute if entity @e[tag=firesigil_3,nbt={Age:239}] at @e[tag=fx_firesigil_3] run summon small_fireball ~ ~2 ~-3 {direction:[0.0,-20.0,0.0],power:[0.0,-20.0,0.0]}
#
execute if entity @e[tag=firesigil_3,nbt={Age:239}] at @e[tag=fx_firesigil_3] run summon small_fireball ~3 ~2 ~1 {direction:[0.0,-20.0,0.0],power:[0.0,-10.0,0.0]}
execute if entity @e[tag=firesigil_3,nbt={Age:239}] at @e[tag=fx_firesigil_3] run summon small_fireball ~-3 ~2 ~1 {direction:[0.0,-20.0,0.0],power:[0.0,-10.0,0.0]}
execute if entity @e[tag=firesigil_3,nbt={Age:239}] at @e[tag=fx_firesigil_3] run summon small_fireball ~3 ~2 ~-1 {direction:[0.0,-20.0,0.0],power:[0.0,-10.0,0.0]}
execute if entity @e[tag=firesigil_3,nbt={Age:239}] at @e[tag=fx_firesigil_3] run summon small_fireball ~-3 ~2 ~-1 {direction:[0.0,-20.0,0.0],power:[0.0,-10.0,0.0]}
#
execute if entity @e[tag=firesigil_3,nbt={Age:239}] at @e[tag=fx_firesigil_3] run summon small_fireball ~1 ~2 ~3 {direction:[0.0,-20.0,0.0],power:[0.0,-10.0,0.0]}
execute if entity @e[tag=firesigil_3,nbt={Age:239}] at @e[tag=fx_firesigil_3] run summon small_fireball ~-1 ~2 ~3 {direction:[0.0,-20.0,0.0],power:[0.0,-10.0,0.0]}
execute if entity @e[tag=firesigil_3,nbt={Age:239}] at @e[tag=fx_firesigil_3] run summon small_fireball ~1 ~2 ~-3 {direction:[0.0,-20.0,0.0],power:[0.0,-10.0,0.0]}
execute if entity @e[tag=firesigil_3,nbt={Age:239}] at @e[tag=fx_firesigil_3] run summon small_fireball ~-1 ~2 ~-3 {direction:[0.0,-20.0,0.0],power:[0.0,-10.0,0.0]}
#
execute if entity @e[tag=firesigil_3,nbt={Age:239}] at @e[tag=fx_firesigil_3] run summon small_fireball ~3 ~2 ~3 {direction:[0.0,-10.0,0.0],power:[0.0,-10.0,0.0]}
execute if entity @e[tag=firesigil_3,nbt={Age:239}] at @e[tag=fx_firesigil_3] run summon small_fireball ~-3 ~2 ~3 {direction:[0.0,-10.0,0.0],power:[0.0,-10.0,0.0]}
execute if entity @e[tag=firesigil_3,nbt={Age:239}] at @e[tag=fx_firesigil_3] run summon small_fireball ~3 ~2 ~-3 {direction:[0.0,-10.0,0.0],power:[0.0,-10.0,0.0]}
execute if entity @e[tag=firesigil_3,nbt={Age:239}] at @e[tag=fx_firesigil_3] run summon small_fireball ~-3 ~2 ~-3 {direction:[0.0,-10.0,0.0],power:[0.0,-10.0,0.0]}
#
execute if entity @e[tag=firesigil_3,nbt={Age:239}] run kill @e[tag=fx_firesigil_3]
execute if entity @e[tag=firesigil_3,nbt={Age:239}] run kill @e[tag=fx_firesigil_3_secondary]
execute if entity @e[tag=firesigil_3] run schedule function atrium:magic/magicitems/spells/firesigil_repeat3 1t
