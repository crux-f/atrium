execute as @e[tag=test_target] store result entity @e[tag=hunter,limit=1,sort=random] PatrolTarget.X int 1 run data get entity @s Pos[0] 1
execute as @e[tag=test_target] store result entity @e[tag=hunter,limit=1,sort=random] PatrolTarget.Y int 1 run data get entity @s Pos[1] 1
execute as @e[tag=test_target] store result entity @e[tag=hunter,limit=1,sort=random] PatrolTarget.Z int 1 run data get entity @s Pos[2] 1
execute at @e[tag=hunter] run execute as @e[type=#minecraft:raiders,distance=..10] store result entity @s PatrolTarget.X int 1 run data get entity @e[tag=hunter,sort=nearest,limit=1] PatrolTarget.X 1
execute at @e[tag=hunter] run execute as @e[type=#minecraft:raiders,distance=..10] store result entity @s PatrolTarget.Y int 1 run data get entity @e[tag=hunter,sort=nearest,limit=1] PatrolTarget.Y 1
execute at @e[tag=hunter] run execute as @e[type=#minecraft:raiders,distance=..10] store result entity @s PatrolTarget.Z int 1 run data get entity @e[tag=hunter,sort=nearest,limit=1] PatrolTarget.Z 1
data merge entity @e[tag=hunter,limit=1] {Patrolling:1b}
