# Triggered by hold_chargeable_item when you hold a staff that has no uses left.
item replace entity @s weapon.offhand with minecraft:air
execute at @s run playsound minecraft:item.shield.break player @a[distance=..15] ~ ~ ~ 1 1 0.1
# Looks like I can do CustomModelData here...
# execute at @s anchored eyes run particle item diamond_hoe{} ^-0.4 ^-0.15 ^0.5 0.02 0.02 0.02 0.01 5
# EDIT: Not using because it would look bad if someone is left-handed and i can't detect that