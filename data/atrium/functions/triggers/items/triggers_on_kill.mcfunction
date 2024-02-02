# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/items/triggers_on_kill
#
# Extra XP from kills
execute if entity @s[nbt={SelectedItem:{tag:{atrium_has_kill_xp_bonus:1b}}}] run function atrium:misc/xp_calculators/bonus/extra_xp_from_items