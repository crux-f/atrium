execute unless entity @e[tag=m_anchor] run execute at @e[team=maycoes] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["m_anchor"]}
execute at @e[tag=m_anchor] run particle enchant ^3 ^1 ^ 0 0 0 0 1 normal
execute at @e[tag=m_anchor] run particle enchant ^-3 ^1 ^ 0 0 0 0 1 normal
execute at @e[tag=m_anchor] run particle enchant ^ ^1 ^3 0 0 0 0 1 normal
execute at @e[tag=m_anchor] run particle enchant ^ ^1 ^-3 0 0 0 0 1 normal
execute at @e[tag=m_anchor] run particle enchant ^2.8 ^0.8 ^ 0 0 0 0 1 normal
execute at @e[tag=m_anchor] run particle enchant ^-2.8 ^0.8 ^ 0 0 0 0 1 normal
execute at @e[tag=m_anchor] run particle enchant ^ ^0.8 ^2.8 0 0 0 0 1 normal
execute at @e[tag=m_anchor] run particle enchant ^ ^0.8 ^-2.8 0 0 0 0 1 normal
execute at @e[tag=m_anchor] run particle enchant ^2.8 ^1.2 ^ 0 0 0 0 1 normal
execute at @e[tag=m_anchor] run particle enchant ^-2.8 ^1.2 ^ 0 0 0 0 1 normal
execute at @e[tag=m_anchor] run particle enchant ^ ^1.2 ^2.8 0 0 0 0 1 normal
execute at @e[tag=m_anchor] run particle enchant ^ ^1.2 ^-2.8 0 0 0 0 1 normal
execute at @e[tag=m_anchor] run particle enchant ^2.8 ^1.5 ^ 0 0 0 0 1 normal
execute at @e[tag=m_anchor] run particle enchant ^-2.8 ^1.5 ^ 0 0 0 0 1 normal
execute at @e[tag=m_anchor] run particle enchant ^ ^1.5 ^2.6 0 0 0 0 1 normal
execute at @e[tag=m_anchor] run particle enchant ^ ^1.5 ^-2.6 0 0 0 0 1 normal
execute at @e[tag=m_anchor] run particle enchant ^2.8 ^0.6 ^ 0 0 0 0 1 normal
execute at @e[tag=m_anchor] run particle enchant ^-2.8 ^0.6 ^ 0 0 0 0 1 normal
execute at @e[tag=m_anchor] run particle enchant ^ ^0.6 ^2.6 0 0 0 0 1 normal
execute at @e[tag=m_anchor] run particle enchant ^ ^0.6 ^-2.6 0 0 0 0 1 normal
execute at @e[tag=m_anchor] run particle reverse_portal ~ ~0.5 ~ 0.2 0.2 0.2 0.1 1 normal
execute at @e[tag=blackknight] run particle portal ~ ~0.5 ~ 0.2 0.2 0.2 0.1 1 normal
execute at @e[tag=m_anchor,limit=1] run tp @e[tag=m_anchor] ~ ~ ~ ~-2 ~0
execute at @e[tag=m_anchor] run kill @e[type=arrow,distance=..3]
execute at @e[tag=m_anchor] run execute at @e[type=arrow,distance=3..4] run particle flash ~ ~ ~ 0 0 0 1 1 normal
schedule function atrium:events/knightboss/maycoes_forcefield 0.5t
