#
# STAFF SPELLS - - -
#
# Air | Slot 0: Updraft | Slot 8: Increase Velocity
execute if data entity @s {SelectedItem:{tag:{atrium_power_slot:0b}},Inventory:[{Slot:-106b,tag:{atrium_staff_air:1b}}]} run function atrium:triggers/magic/spells/increase_velocity
execute if data entity @s {SelectedItem:{tag:{atrium_power_slot:8b}},Inventory:[{Slot:-106b,tag:{atrium_staff_air:1b}}]} run function atrium:triggers/magic/spells/updraft
#
# Earth | Slot 0: Natural Armor | Slot 8: Stone Sprite
execute if data entity @s {SelectedItem:{tag:{atrium_power_slot:0b}},Inventory:[{Slot:-106b,tag:{atrium_staff_earth:1b}}]} run function atrium:triggers/magic/spells/natural_armor
execute if data entity @s {SelectedItem:{tag:{atrium_power_slot:8b}},Inventory:[{Slot:-106b,tag:{atrium_staff_earth:1b}}]} run function atrium:triggers/magic/spells/stone_sprite
#
# Fire | Slot 0: Flaming Sigil | Slot 8: Throw Flames
execute if data entity @s {SelectedItem:{tag:{atrium_power_slot:0b}},Inventory:[{Slot:-106b,tag:{atrium_staff_fire:1b}}]} run function atrium:triggers/magic/spells/flame_sigil
execute if data entity @s {SelectedItem:{tag:{atrium_power_slot:8b}},Inventory:[{Slot:-106b,tag:{atrium_staff_fire:1b}}]} run function atrium:triggers/magic/spells/throw_flames
#
# Water | Slot 0: Nourishment | Slot 8: Extinguish
execute if data entity @s {SelectedItem:{tag:{atrium_power_slot:0b}},Inventory:[{Slot:-106b,tag:{atrium_staff_water:1b}}]} run function atrium:triggers/magic/spells/nourishment
execute if data entity @s {SelectedItem:{tag:{atrium_power_slot:8b}},Inventory:[{Slot:-106b,tag:{atrium_staff_water:1b}}]} run function atrium:triggers/magic/spells/extinguish
#
# Time | Slot 0: Delaying Sigil | Slot 8: Desync
execute if data entity @s {SelectedItem:{tag:{atrium_power_slot:0b}},Inventory:[{Slot:-106b,tag:{atrium_staff_time:1b}}]} run function atrium:triggers/magic/spells/delaying_sigil
execute if data entity @s {SelectedItem:{tag:{atrium_power_slot:8b}},Inventory:[{Slot:-106b,tag:{atrium_staff_time:1b}}]} run function atrium:triggers/magic/spells/desync
#
# Space | Slot 0: Returning Sigil | Slot 8: Parallax
execute if data entity @s {SelectedItem:{tag:{atrium_power_slot:0b}},Inventory:[{Slot:-106b,tag:{atrium_staff_space:1b}}]} run function atrium:triggers/magic/spells/returning_sigil
execute if data entity @s {SelectedItem:{tag:{atrium_power_slot:8b}},Inventory:[{Slot:-106b,tag:{atrium_staff_space:1b}}]} run function atrium:triggers/magic/spells/parallax
