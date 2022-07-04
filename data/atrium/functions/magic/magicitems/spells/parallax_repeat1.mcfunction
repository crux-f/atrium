execute as @e[tag=parallax,nbt={Age:119}] at @s run particle minecraft:reverse_portal ~ ~ ~ 0.25 0.25 0.25 1 150
execute as @e[tag=parallax,nbt={Age:119}] at @s run playsound minecraft:entity.zombie.break_wooden_door master @a[distance=..30] ~ ~ ~ 0.5 0.1 0.1
execute if entity @e[tag=parallax,nbt={Age:119}] in atrium:between_worlds as @e[tag=parallax_target,type=minecraft:player] run execute as @s in minecraft:overworld run tp @s @e[tag=parallax,limit=1,sort=random]
execute if entity @e[tag=parallax,nbt={Age:119}] as @e[tag=parallax_target,type=!minecraft:player] run tp @s @e[tag=parallax,limit=1,sort=random]
execute as @e[tag=parallax,nbt={Age:119}] at @s run tag @e remove parallax_target
execute as @e[tag=parallax] run schedule function atrium:magic/magicitems/spells/parallax_repeat1 1t
