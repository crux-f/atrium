execute at @e[tag=runic_codex] run playsound minecraft:block.enchantment_table.use block @a[distance=..30] ~ ~ ~ 1 0.4 0.1
execute at @e[tag=runic_codex] run particle minecraft:enchant ~ ~3 ~ 0.1 0.1 0.1 0.1 500 normal
# remove anchor
kill @e[tag=runic_codex]

