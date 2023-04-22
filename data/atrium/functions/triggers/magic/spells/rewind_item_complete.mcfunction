# SFX
execute at @a[tag=atrium_rewind_item_caster] run playsound minecraft:block.respawn_anchor.set_spawn player @a[distance=..10] ~ ~ ~ 0.25 0.1 0.1
execute at @a[tag=atrium_rewind_item_caster] anchored eyes run particle minecraft:crit ^ ^ ^0.45 0.1 0.1 0.1 0.25 10
#
# Repair the item. Using Curse of Vanishing levels to track how many times it has been rewound.
#
# If it has been rewound 5 times, it can no longer be repaired.
execute as @a[tag=atrium_rewind_item_caster] at @s if data entity @s {SelectedItem:{tag:{Enchantments:[{id:"minecraft:vanishing_curse",lvl:5s}]}}} run particle minecraft:smoke ^ ^ ^1.5 0.03 0.03 0.03 0 50
execute as @a[tag=atrium_rewind_item_caster] at @s if data entity @s {SelectedItem:{tag:{Enchantments:[{id:"minecraft:vanishing_curse",lvl:5s}]}}} run playsound minecraft:block.redstone_torch.burnout master @a[distance=..30] ~ ~ ~ 0.3 1 0.1
# If it has been rewound 4 times, repair 20% of its durability.
execute as @a[tag=atrium_rewind_item_caster] run item modify entity @s weapon.mainhand atrium:rewind_item/rewind_5
# If it has been rewound 3 times, repair 40% of its durability.
execute as @a[tag=atrium_rewind_item_caster] run item modify entity @s weapon.mainhand atrium:rewind_item/rewind_4
# If it has been rewound 2 times, repair 60% of its durability.
execute as @a[tag=atrium_rewind_item_caster] run item modify entity @s weapon.mainhand atrium:rewind_item/rewind_3
# If it has been rewound 1 time, repair 80% of its durability.
execute as @a[tag=atrium_rewind_item_caster] run item modify entity @s weapon.mainhand atrium:rewind_item/rewind_2
# If it has never been rewound before, set its durability to 100%.
execute as @a[tag=atrium_rewind_item_caster] run item modify entity @s weapon.mainhand atrium:rewind_item/rewind_1
#
# Remove tag
execute as @e[tag=atrium_rewind_item_caster] run tag @s remove atrium_rewind_item_caster