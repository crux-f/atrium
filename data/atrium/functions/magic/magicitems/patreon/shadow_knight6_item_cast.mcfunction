execute as @a[name=shadow_knight6,scores={patreon_item=3..}] at @s run playsound minecraft:entity.guardian.hurt master @a[distance=..30] ~ ~ ~ 1 0.5 0.1
execute as @a[name=shadow_knight6,scores={patreon_item=3..}] at @s run particle dust_color_transition 0.549 0.549 0.549 1 1.000 0.529 0.969 ~ ~1 ~ 1 0.5 1 0.1 75 normal
execute as @a[name=shadow_knight6,scores={patreon_item=3..}] at @s run particle dust_color_transition 0.020 0.020 0.020 1 0.392 0.063 0.490 ~ ~1 ~ 1 0.5 1 0 25 normal
execute as @a[name=shadow_knight6,scores={patreon_item=3..}] at @s run effect give @e[distance=..5] minecraft:regeneration 5 0 false
scoreboard players set shadow_knight6 patreon_item 0
