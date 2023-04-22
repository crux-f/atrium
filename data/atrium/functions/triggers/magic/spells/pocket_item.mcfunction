# Tag caster
tag @s add atrium_pocket_item_caster
#
# Casting SFX
execute anchored eyes positioned ^ ^ ^1 run particle minecraft:portal ~ ~ ~ 0 0 0 0.25 50
playsound minecraft:block.portal.trigger player @a[distance=..10] ~ ~ ~ 0.15 2 0.1
#
# Run the next script 1 second later UNLESS the player's Ender Chest is completely full.
execute unless data entity @s EnderItems[26] run schedule function atrium:triggers/magic/spells/pocket_item_complete 3s
#
# If the player's Ender Chest is completely full, play failure sounds + display failure particles.
execute if data entity @s EnderItems[26] run particle minecraft:smoke ^ ^ ^1.5 0.03 0.03 0.03 0 50
execute if data entity @s EnderItems[26] run playsound minecraft:block.redstone_torch.burnout master @a[distance=..30] ~ ~ ~ 0.3 1 0.1
execute if data entity @s EnderItems[26] run tellraw @s {"text":"(Your Ender Chest is full.)","italic":true,"color":"gray"}
#
#
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete

