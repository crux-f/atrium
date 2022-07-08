# Revoke to allow retrigger
advancement revoke @s only atrium:triggers/treasure/everglacier_charge
#
# If the charge level is 9, run everglacier_full.
execute if entity @s[nbt={SelectedItem:{tag:{charges:9b}}}] as @s run function atrium:triggers/treasure/everglacier_full
#
# Otherwise, advance the charge level by 1.
item modify entity @s weapon.mainhand atrium:treasure/everglacier_8
item modify entity @s weapon.mainhand atrium:treasure/everglacier_7
item modify entity @s weapon.mainhand atrium:treasure/everglacier_6
item modify entity @s weapon.mainhand atrium:treasure/everglacier_5
item modify entity @s weapon.mainhand atrium:treasure/everglacier_4
item modify entity @s weapon.mainhand atrium:treasure/everglacier_3
item modify entity @s weapon.mainhand atrium:treasure/everglacier_2
item modify entity @s weapon.mainhand atrium:treasure/everglacier_1
item modify entity @s weapon.mainhand atrium:treasure/everglacier_0
# SFX
execute at @s run playsound minecraft:entity.guardian.ambient player @a[distance=..10] ~ ~ ~ 0.75 1.35 0.2
execute at @s anchored eyes run particle minecraft:rain ^-0.65 ^1 ^ 0.25 0.25 0.25 0.5 75

