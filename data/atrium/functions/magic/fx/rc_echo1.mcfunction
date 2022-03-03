execute at @e[tag=runic_codex] run playsound minecraft:block.enchantment_table.use block @a[distance=..30] ~ ~ ~ 1 0.5 0.1
execute at @e[tag=runic_codex] run particle minecraft:enchant ~ ~3 ~ 0.15 0.15 0.15 0.1 500 normal
schedule function atrium:magic/fx/rc_echo2 10t
