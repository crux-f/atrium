# Revoke advancement to allow re-trigger
advancement revoke @s only atrium:triggers/within_structure/waystone_compass_unenchant
# Enchant the compass with Lure (grants xp discount when used in warp gate)
execute if entity @s[nbt={SelectedItem:{id:"minecraft:compass"}}] run item modify entity @s weapon.mainhand atrium:structures/waystone_compass_unenchant
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:compass"}]}] run item modify entity @s weapon.offhand atrium:structures/waystone_compass_unenchant