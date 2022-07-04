execute at @e[tag=witchsigil] run particle witch ^0.5 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=witchsigil] run particle witch ^-0.5 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=witchsigil] run particle witch ^ ^ ^0.5 0 0 0 0 1 normal
execute at @e[tag=witchsigil] run particle witch ^ ^ ^-0.5 0 0 0 0 1 normal
execute at @e[tag=witchsigil] run particle reverse_portal ~ ~ ~ 0.2 0.2 0.2 0.1 1 normal
execute at @e[tag=witchsigil] run tp @e[tag=witchsigil] ~ ~ ~ ~-2 ~0
execute unless entity @e[tag=scrambler] run kill @e[tag=witchsigil]
execute if entity @e[tag=witchsigil] run schedule function atrium:events/fx/fx_witchsigil 1t
