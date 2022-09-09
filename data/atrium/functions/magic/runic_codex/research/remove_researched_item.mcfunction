# Remove the item they were researching
#
# If the count isn't 1, decrease it by 1
execute if entity @s[nbt=!{SelectedItem:{Count:1b}}] run item modify entity @s weapon.mainhand atrium:decrease_count_by_1
# If it is, set the count to 0 (workaround for Paper crash)
execute if entity @s[nbt={SelectedItem:{Count:1b}}] run item modify entity @s weapon.mainhand atrium:set_count_to_0