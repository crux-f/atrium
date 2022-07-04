# Summon 3 Order Enforcers
function atrium:summon/emerald_eye/single/summon_order_enforcer
function atrium:summon/emerald_eye/single/summon_order_enforcer
function atrium:summon/emerald_eye/single/summon_order_enforcer
# Summon 4 Order Guards
function atrium:summon/emerald_eye/single/summon_order_guard
function atrium:summon/emerald_eye/single/summon_order_guard
function atrium:summon/emerald_eye/single/summon_order_guard
function atrium:summon/emerald_eye/single/summon_order_guard
#
#
# Give 1 Enforcer a banner and patrol data
data merge entity @e[tag=taunt_ability,limit=1,sort=nearest,distance=..3] {Tags:["ominous"],ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{display:{Name:'{"text":"Emerald Eye Banner","color":"green","italic":false}'},emerald_eye_banner:1b,HideFlags:32,BlockEntityTag:{Patterns:[{Color:0,Pattern:"mr"},{Color:5,Pattern:"dls"},{Color:13,Pattern:"flo"},{Color:15,Pattern:"bs"},{Color:15,Pattern:"ts"},{Color:15,Pattern:"cbo"}]}}}],ArmorDropChances:[0.085F,0.085F,0.085F,1.000F]}
execute as @e[tag=taunt_ability,limit=1,sort=nearest,distance=..3] store result entity @s PatrolTarget.X int 1 run data get entity @s Pos[0] 1
execute as @e[tag=taunt_ability,limit=1,sort=nearest,distance=..3] store result entity @s PatrolTarget.Y int 1 run data get entity @s Pos[1] 1
execute as @e[tag=taunt_ability,limit=1,sort=nearest,distance=..3] store result entity @s PatrolTarget.Z int 1 run data get entity @s Pos[2] 1
#
# Enforcer tells everyone else
execute as @e[type=#minecraft:raiders,distance=..10] store result entity @s PatrolTarget.X int 1 run data get entity @e[tag=taunt_ability,limit=1,sort=nearest,distance=..3] PatrolTarget.X 1
execute as @e[type=#minecraft:raiders,distance=..10] store result entity @s PatrolTarget.Y int 1 run data get entity @e[tag=taunt_ability,limit=1,sort=nearest,distance=..3] PatrolTarget.Y 1
execute as @e[type=#minecraft:raiders,distance=..10] store result entity @s PatrolTarget.Z int 1 run data get entity @e[tag=taunt_ability,limit=1,sort=nearest,distance=..3] PatrolTarget.Z 1
