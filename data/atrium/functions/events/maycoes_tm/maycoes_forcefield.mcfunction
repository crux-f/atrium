execute at @e[tag=maycoes_center] run particle enchant ^3 ^1 ^ 0 0 0 0 1 normal
execute at @e[tag=maycoes_center] run particle enchant ^-3 ^1 ^ 0 0 0 0 1 normal
execute at @e[tag=maycoes_center] run particle enchant ^ ^1 ^3 0 0 0 0 1 normal
execute at @e[tag=maycoes_center] run particle enchant ^ ^1 ^-3 0 0 0 0 1 normal
execute at @e[tag=maycoes_center] run particle enchant ^2.8 ^0.8 ^ 0 0 0 0 1 normal
execute at @e[tag=maycoes_center] run particle enchant ^-2.8 ^0.8 ^ 0 0 0 0 1 normal
execute at @e[tag=maycoes_center] run particle enchant ^ ^0.8 ^2.8 0 0 0 0 1 normal
execute at @e[tag=maycoes_center] run particle enchant ^ ^0.8 ^-2.8 0 0 0 0 1 normal
execute at @e[tag=maycoes_center] run particle enchant ^2.8 ^1.2 ^ 0 0 0 0 1 normal
execute at @e[tag=maycoes_center] run particle enchant ^-2.8 ^1.2 ^ 0 0 0 0 1 normal
execute at @e[tag=maycoes_center] run particle enchant ^ ^1.2 ^2.8 0 0 0 0 1 normal
execute at @e[tag=maycoes_center] run particle enchant ^ ^1.2 ^-2.8 0 0 0 0 1 normal
execute at @e[tag=maycoes_center] run particle enchant ^2.8 ^1.5 ^ 0 0 0 0 1 normal
execute at @e[tag=maycoes_center] run particle enchant ^-2.8 ^1.5 ^ 0 0 0 0 1 normal
execute at @e[tag=maycoes_center] run particle enchant ^ ^1.5 ^2.6 0 0 0 0 1 normal
execute at @e[tag=maycoes_center] run particle enchant ^ ^1.5 ^-2.6 0 0 0 0 1 normal
execute at @e[tag=maycoes_center] run particle enchant ^2.8 ^0.6 ^ 0 0 0 0 1 normal
execute at @e[tag=maycoes_center] run particle enchant ^-2.8 ^0.6 ^ 0 0 0 0 1 normal
execute at @e[tag=maycoes_center] run particle enchant ^ ^0.6 ^2.6 0 0 0 0 1 normal
execute at @e[tag=maycoes_center] run particle enchant ^ ^0.6 ^-2.6 0 0 0 0 1 normal
execute at @e[tag=maycoes_center] run particle reverse_portal ~ ~0.5 ~ 0.2 0.2 0.2 0.1 1 normal
execute at @e[tag=maycoes_center] run tp @e[tag=maycoes_center] ~ ~ ~ ~-2 ~0
execute at @e[tag=maycoes_center] run kill @e[type=arrow,distance=..5.5]
execute at @e[tag=maycoes_center] run execute at @e[type=arrow,distance=..8] run particle flash ~ ~ ~ 0 0 0 1 1 normal
execute if entity @e[tag=maycoes] run schedule function atrium:events/maycoes_tm/maycoes_forcefield 0.5t
