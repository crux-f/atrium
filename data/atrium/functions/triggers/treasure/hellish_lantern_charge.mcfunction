# Revoke to allow retrigger
advancement revoke @s only atrium:triggers/treasure/hellish_lantern_charge
#
# If the charge level is 9, run hellish_lantern_full.
execute if entity @s[nbt={SelectedItem:{tag:{charges:9b}}}] as @s run function atrium:triggers/treasure/hellish_lantern_full
#
# Otherwise, advance the charge level by 1.
item modify entity @s weapon.mainhand atrium:treasure/hellish_lantern_8
item modify entity @s weapon.mainhand atrium:treasure/hellish_lantern_7
item modify entity @s weapon.mainhand atrium:treasure/hellish_lantern_6
item modify entity @s weapon.mainhand atrium:treasure/hellish_lantern_5
item modify entity @s weapon.mainhand atrium:treasure/hellish_lantern_4
item modify entity @s weapon.mainhand atrium:treasure/hellish_lantern_3
item modify entity @s weapon.mainhand atrium:treasure/hellish_lantern_2
item modify entity @s weapon.mainhand atrium:treasure/hellish_lantern_1
item modify entity @s weapon.mainhand atrium:treasure/hellish_lantern_0
# SFX
execute at @s run playsound minecraft:entity.horse.eat block @a[distance=..12] ~ ~ ~ 1 0.75 1
execute at @s anchored eyes run particle minecraft:large_smoke ^ ^-0.5 ^0.5 0 0 0 0.1 10

