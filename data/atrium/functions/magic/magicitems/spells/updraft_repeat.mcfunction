execute at @e[tag=updraft] unless entity @e[tag=deflect_updraft] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["deflect_updraft"]}
execute at @e[tag=deflect_updraft] run particle cloud ^0.5 ^ ^ 0 3 0 0 10 normal
execute at @e[tag=deflect_updraft] run particle cloud ^-0.5 ^ ^ 0 3 0 0 10 normal
execute at @e[tag=deflect_updraft] run particle cloud ^ ^ ^0.5 0 3 0 0 10 normal
execute at @e[tag=deflect_updraft] run particle cloud ^ ^ ^-0.5 0 3 0 0 10 normal
execute at @e[tag=deflect_updraft] positioned ~ ~1 ~ run data merge entity @e[type=arrow,distance=..2.5,limit=1] {Motion:[0.0,2.0,0.0]}
execute at @e[tag=deflect_updraft] run tp @e[tag=deflect_updraft] ~ ~ ~ ~-2 ~0
execute if entity @e[tag=updraft,nbt={Age:239}] run kill @e[tag=deflect_updraft]
execute if entity @e[tag=updraft] run schedule function atrium:magic/magicitems/spells/updraft_repeat 1t
