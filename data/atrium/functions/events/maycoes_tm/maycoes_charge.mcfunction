# Add 1 to charge counter
scoreboard players add @e[tag=maycoes] maycoes 1
# If Maycoes exists and the charge counter is 2 or less, schedule this function to run again in 2 seconds.
execute if entity @e[scores={maycoes=..2}] run schedule function atrium:events/maycoes_tm/maycoes_charge 2s
# particles
execute at @e[tag=maycoes] run particle minecraft:enchant ~ ~ ~ 3 3 3 0.05 100
# sound
execute at @e[tag=maycoes] run playsound minecraft:block.enchantment_table.use master @a[distance=..50] ~ ~ ~ 1 0.7 0.2
# If Maycoes' charge counter is 3 or higher, activate the spell tree.
execute if entity @e[scores={maycoes=3..}] run function atrium:events/maycoes_tm/maycoes_spell_tree
