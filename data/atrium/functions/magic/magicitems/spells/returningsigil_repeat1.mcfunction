execute at @e[tag=fx_returningsigil] run particle minecraft:enchanted_hit ^0.5 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=fx_returningsigil] run particle minecraft:enchanted_hit ^-0.5 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=fx_returningsigil] run particle minecraft:enchanted_hit ^ ^ ^0.5 0 0 0 0 1 normal
execute at @e[tag=fx_returningsigil] run particle minecraft:enchanted_hit ^ ^ ^-0.5 0 0 0 0 1 normal
execute as @e[tag=fx_returningsigil] at @s run tp @s ~ ~ ~ ~-2 ~0
execute at @e[tag=decor_pearl] run particle minecraft:portal ~ ~ ~ 0 0 0 1.2 5 normal
execute at @e[tag=decor_pearl] run particle minecraft:portal ~ ~-1 ~ 0 1 0 1 5 normal
execute if entity @e[tag=returningsigil,nbt={Age:239}] at @e[tag=returningsigil_caster] if entity @e[tag=fx_returningsigil,distance=..25] run particle minecraft:flash ~ ~ ~ 0 0 0 0.1 50
execute if entity @e[tag=returningsigil,nbt={Age:239}] at @e[tag=returningsigil_caster] if entity @e[tag=fx_returningsigil,distance=..25] run playsound minecraft:entity.enderman.teleport master @a[distance=..15] ~ ~ ~ 1 1 0.1
execute if entity @e[tag=returningsigil,nbt={Age:239}] at @e[tag=fx_returningsigil] if entity @e[tag=returningsigil_caster,distance=..25] run particle minecraft:flash ~ ~ ~ 0 0 0 0.1 50
execute if entity @e[tag=returningsigil,nbt={Age:239}] at @e[tag=fx_returningsigil] if entity @e[tag=returningsigil_caster,distance=..25] run playsound minecraft:entity.enderman.teleport master @a[distance=..30] ~ ~ ~ 1 1 0.1
execute if entity @e[tag=returningsigil,nbt={Age:239}] at @e[tag=fx_returningsigil] run tp @e[tag=returningsigil_caster,distance=..25,limit=1,sort=random] @e[tag=fx_returningsigil,limit=1]
execute if entity @e[tag=returningsigil,nbt={Age:239}] run kill @e[tag=fx_returningsigil]
execute if entity @e[tag=returningsigil,nbt={Age:239}] run kill @e[tag=decor_pearl] 
execute if entity @e[tag=returningsigil,nbt={Age:239}] run tag @a[tag=returningsigil_caster] remove returningsigil_caster
execute if entity @e[tag=returningsigil] run schedule function atrium:magic/magicitems/spells/returningsigil_repeat1 1t
