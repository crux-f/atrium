# Remove empty bowl from either Main Hand or Off Hand
# (There's a slim chance someone loses 2 bowls but I don't care enough to fix it)
execute as @a[tag=atrium_eating_fruit_salad] if entity @s[nbt={SelectedItem:{id:"minecraft:bowl",count:1}}] run function atrium:items/slot_control/clear_selected_item
execute as @a[tag=atrium_eating_fruit_salad] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:bowl",count:1}]}] run function atrium:items/slot_control/clear_offhand_item
#
# Give the player the partially-eaten version
give @a[tag=atrium_salad_used_0] beetroot_soup[minecraft:custom_model_data={strings:["atrium_fruit_salad_1"]},minecraft:lore=['{"text":" "}','[{"text":"Uses:","color":"gray","italic":false},{"text":" 2","color":"blue","italic":false}]'],minecraft:item_name='{"text":"Fruit Salad"}',minecraft:custom_data={atrium_fruit_salad:1b,atrium_multi_use:1b,atrium_uses_remaining:2}] 1
give @a[tag=atrium_salad_used_1] beetroot_soup[minecraft:custom_model_data={strings:["atrium_fruit_salad_2"]},minecraft:lore=['{"text":" "}','[{"text":"Uses:","color":"gray","italic":false},{"text":" 1","color":"blue","italic":false}]'],minecraft:item_name='{"text":"Fruit Salad"}',minecraft:custom_data={atrium_fruit_salad:1b,atrium_multi_use:1b,atrium_uses_remaining:1}] 1
#
# Remove tags
tag @a[tag=atrium_eating_fruid_salad] remove atrium_eating_fruid_salad
tag @a[tag=atrium_salad_used_0] remove atrium_salad_used_0
tag @a[tag=atrium_salad_used_1] remove atrium_salad_used_1