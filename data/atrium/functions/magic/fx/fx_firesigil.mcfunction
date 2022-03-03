execute at @e[tag=firesigil] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["fx_firesigil"]}
execute at @e[tag=fx_firesigil] run particle flame ^0.5 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=fx_firesigil] run particle flame ^-0.5 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=fx_firesigil] run particle flame ^ ^ ^0.5 0 0 0 0 1 normal
execute at @e[tag=fx_firesigil] run particle flame ^ ^ ^-0.5 0 0 0 0 1 normal
execute at @e[tag=fx_firesigil] run tp @e[tag=fx_firesigil] ~ ~ ~ ~-2 ~0
execute unless entity @e[tag=firesigil] run kill @e[tag=fx_firesigil]
execute if entity @e[tag=firesigil] run schedule function atrium:magic/fx/fx_firesigil 1t
