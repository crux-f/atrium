# Tag the caster
tag @a[predicate=atrium:the_legend_of_moonpelt_req] add legend_moonpelt_caster
# Sounds and particles
execute as @a[tag=legend_moonpelt_caster] at @s run playsound minecraft:entity.wolf.howl player @a[distance=..30] ~ ~ ~ 0.4 1 0.1
execute as @a[tag=legend_moonpelt_caster] at @s run playsound minecraft:entity.wolf.howl player @a[distance=..30] ~ ~ ~ 0.4 0.7 0.1
execute as @a[tag=legend_moonpelt_caster] at @s anchored eyes run particle minecraft:enchant ^0.4 ^-0.05 ^0.5 0.05 0.05 0.05 0.1 10
execute as @a[tag=legend_moonpelt_caster] at @s anchored eyes run particle minecraft:soul_fire_flame ^0.4 ^-0.05 ^0.5 0.05 0.05 0.05 0.01 7
# Tag one wolf without the moonpelt upgrade
execute as @a[tag=legend_moonpelt_caster] at @s run tag @e[limit=1,type=minecraft:wolf,sort=random,distance=..15,tag=!moonpelt_upgrade] add moonpelt_upgrade
# Give one wolf that hasn't recieved the buff invisible moonpelt armor, and enchanted bite
data merge entity @e[tag=moonpelt_upgrade,distance=..15,limit=1] {HandItems:[{id:"minecraft:bone",Count:1b,tag:{display:{Name:'{"text":"Enchanted Bite","color":"aqua","italic":false}'},Enchantments:[{id:"minecraft:sharpness",lvl:4s}]}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b,tag:{display:{Name:'{"text":"Moonpelt","color":"aqua","italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:3s},{id:"minecraft:blast_protection",lvl:2s},{id:"minecraft:thorns",lvl:1s}]}},{id:"minecraft:diamond_leggings",Count:1b,tag:{display:{Name:'{"text":"Moonpelt","color":"aqua","italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:blast_protection",lvl:2s},{id:"minecraft:thorns",lvl:1s}]}},{id:"minecraft:diamond_chestplate",Count:1b,tag:{display:{Name:'{"text":"Moonpelt","color":"aqua","italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:blast_protection",lvl:2s},{id:"minecraft:thorns",lvl:1s}]}},{id:"minecraft:diamond_helmet",Count:1b,tag:{display:{Name:'{"text":"Moonpelt","color":"aqua","italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:blast_protection",lvl:2s},{id:"minecraft:thorns",lvl:1s}]}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F]}
execute at @a[tag=legend_moonpelt_caster] run execute at @e[distance=..15,tag=moonpelt_upgrade] run particle minecraft:soul_fire_flame ~ ~0.75 ~ 0.05 0.05 0.05 0.01 14
clear @a[tag=legend_moonpelt_caster] minecraft:porkchop 1
# Spell cleanup
function atrium:magic/magicitems/spell_cast_complete
tag @a[tag=legend_moonpelt_caster] remove legend_moonpelt_caster
