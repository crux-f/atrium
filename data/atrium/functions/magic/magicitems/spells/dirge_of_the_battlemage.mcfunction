# Tag the caster
tag @a[predicate=atrium:dirge_of_the_battlemage_req] add dirge_BM_caster
# Buff all players within 15 blocks of the caster. +3 attack damage for every 10 levels of xp you currently have.
execute at @a[tag=dirge_BM_caster,level=10..] run effect give @e[distance=..15] minecraft:strength 90 0
execute at @a[tag=dirge_BM_caster,level=20..] run effect give @e[distance=..15] minecraft:strength 120 1
execute at @a[tag=dirge_BM_caster,level=30..] run effect give @e[distance=..15] minecraft:strength 170 2
execute at @a[tag=dirge_BM_caster,level=40..] run effect give @e[distance=..15] minecraft:strength 200 3
execute at @a[tag=dirge_BM_caster,level=50..] run effect give @e[distance=..15] minecraft:strength 230 4
# Sounds and particles
execute as @a[tag=dirge_BM_caster] at @s run playsound minecraft:block.anvil.use player @a[distance=..30] ~ ~ ~ 1 0.1 0.1
execute as @a[tag=dirge_BM_caster] at @s anchored eyes run particle minecraft:enchant ^0.4 ^-0.05 ^0.5 0.05 0.05 0.05 0.1 10
execute as @a[tag=dirge_BM_caster] at @s anchored eyes run particle minecraft:campfire_cosy_smoke ^0.4 ^-0.05 ^0.5 0.05 0.05 0.05 0.01 2
execute at @a[tag=dirge_BM_caster,level=10..] run execute at @e[distance=..15] run particle minecraft:campfire_cosy_smoke ~ ~1.5 ~ 0.05 0.05 0.05 0.01 5
clear @a[tag=dirge_BM_caster] minecraft:iron_ingot 1
# Spell cleanup
function atrium:magic/magicitems/spell_cast_complete
tag @a[tag=dirge_BM_caster] remove dirge_BM_caster
