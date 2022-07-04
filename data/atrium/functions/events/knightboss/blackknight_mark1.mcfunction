execute at @e[tag=blackknight] run particle minecraft:reverse_portal ~ ~ ~ 0.2 0.2 0.2 1 100 normal
execute at @e[tag=blackknight] run playsound minecraft:block.lodestone.place master @a[distance=..60] ~ ~ ~ 1 0.1 1
execute at @e[tag=blackknight] run tag @r[distance=..30,gamemode=survival] add marked
execute at @e[tag=blackknight] run effect give @a[tag=marked] minecraft:glowing 8 0
schedule function atrium:events/knightboss/blackknight_mark2 8s
