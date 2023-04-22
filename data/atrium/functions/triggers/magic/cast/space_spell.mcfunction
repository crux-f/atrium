# Redirects from spell_charge
#
# Air
# Slot 0: Returning Sigil I-III
execute if entity @s[scores={charge=60..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:0b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:1b}}]} run function atrium:triggers/magic/spells/space_sigil
execute if entity @s[scores={charge=120..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:0b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:2b}}]} run function atrium:triggers/magic/spells/space_sigil
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:0b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run function atrium:triggers/magic/spells/space_sigil
# Slot 8: Parallax I-III
execute if entity @s[scores={charge=60..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:8b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:1b}}]} run function atrium:triggers/magic/spells/parallax
execute if entity @s[scores={charge=120..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:8b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:2b}}]} run function atrium:triggers/magic/spells/parallax
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:8b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run function atrium:triggers/magic/spells/parallax
# Slot 1: Arcane Ward I-II
execute if entity @s[scores={charge=120..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:1b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:2b}}]} run function atrium:triggers/magic/spells/arcane_ward
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:1b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run function atrium:triggers/magic/spells/arcane_ward
# Slot 7: Pocket Item I-II
execute if entity @s[scores={charge=120..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:7b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:2b}}]} run function atrium:triggers/magic/spells/pocket_item
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:7b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run function atrium:triggers/magic/spells/pocket_item
#
# Slot 4: ???
# execute if entity @s[scores={charge=160}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:4b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run function atrium:triggers/magic/spells/dance