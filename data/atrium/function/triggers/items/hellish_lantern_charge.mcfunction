# Revoke to allow retrigger
advancement revoke @s only atrium:triggers/items/hellish_lantern_charge
#
# If the charge level is 9, run hellish_lantern_full.
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_fireballs:9b}}}}] as @s run function atrium:triggers/items/hellish_lantern_full
#
# Otherwise, advance the charge level by 1.
item modify entity @s weapon.mainhand atrium:chargeable/hellish_lantern/lantern_charge_8
item modify entity @s weapon.mainhand atrium:chargeable/hellish_lantern/lantern_charge_7
item modify entity @s weapon.mainhand atrium:chargeable/hellish_lantern/lantern_charge_6
item modify entity @s weapon.mainhand atrium:chargeable/hellish_lantern/lantern_charge_5
item modify entity @s weapon.mainhand atrium:chargeable/hellish_lantern/lantern_charge_4
item modify entity @s weapon.mainhand atrium:chargeable/hellish_lantern/lantern_charge_3
item modify entity @s weapon.mainhand atrium:chargeable/hellish_lantern/lantern_charge_2
item modify entity @s weapon.mainhand atrium:chargeable/hellish_lantern/lantern_charge_1
item modify entity @s weapon.mainhand atrium:chargeable/hellish_lantern/lantern_charge_0
# SFX
execute at @s run playsound minecraft:entity.horse.eat block @a[distance=..12] ~ ~ ~ 1 0.75 1
execute at @s anchored eyes run particle minecraft:large_smoke ^ ^-0.5 ^0.5 0 0 0 0.1 10

