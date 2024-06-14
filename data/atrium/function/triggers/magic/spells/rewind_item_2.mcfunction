# SFX
execute at @a[tag=atrium_rewind_item_caster] run playsound minecraft:block.respawn_anchor.set_spawn player @a[distance=..10] ~ ~ ~ 0.25 0.1 0.1
execute at @a[tag=atrium_rewind_item_caster] anchored eyes run particle minecraft:crit ^ ^ ^0.45 0.1 0.1 0.1 0.25 10
#
# Repair the item. Using Curse of Vanishing levels to track how many times it has been rewound.
#
# If it has been rewound 10 times, it can no longer be repaired.
execute as @a[tag=atrium_rewind_item_caster] at @s if data entity @s {SelectedItem:{components:{"minecraft:enchantments":{levels:{"minecraft:vanishing_curse":10}}}}} run function atrium:triggers/magic/spell_failure_effects
execute as @a[tag=atrium_rewind_item_caster] at @s if data entity @s {SelectedItem:{components:{"minecraft:enchantments":{levels:{"minecraft:vanishing_curse":10}}}}} run tellraw @s {"text":"(Even miracles only go so far.)","italic":true,"color":"gray"}
# If it has been rewound 9 times, repair 10% of its durability.
execute as @a[tag=atrium_rewind_item_caster] run item modify entity @s weapon.mainhand atrium:rewind_item/rewind_2_r10
# If it has been rewound 8 times, repair 20% of its durability.
execute as @a[tag=atrium_rewind_item_caster] run item modify entity @s weapon.mainhand atrium:rewind_item/rewind_2_r9
# If it has been rewound 7 times, repair 30% of its durability.
execute as @a[tag=atrium_rewind_item_caster] run item modify entity @s weapon.mainhand atrium:rewind_item/rewind_2_r8
# If it has been rewound 6 times, repair 40% of its durability.
execute as @a[tag=atrium_rewind_item_caster] run item modify entity @s weapon.mainhand atrium:rewind_item/rewind_2_r7
# If it has been rewound 5 times, repair 50% of its durability.
execute as @a[tag=atrium_rewind_item_caster] run item modify entity @s weapon.mainhand atrium:rewind_item/rewind_2_r6
# If it has been rewound 4 times, repair 60% of its durability.
execute as @a[tag=atrium_rewind_item_caster] run item modify entity @s weapon.mainhand atrium:rewind_item/rewind_2_r5
# If it has been rewound 3 times, repair 70% of its durability.
execute as @a[tag=atrium_rewind_item_caster] run item modify entity @s weapon.mainhand atrium:rewind_item/rewind_2_r4
# If it has been rewound 2 times, repair 80% of its durability.
execute as @a[tag=atrium_rewind_item_caster] run item modify entity @s weapon.mainhand atrium:rewind_item/rewind_2_r3
# If it has been rewound 1 time, repair 90% of its durability.
execute as @a[tag=atrium_rewind_item_caster] run item modify entity @s weapon.mainhand atrium:rewind_item/rewind_2_r2
# If it has never been rewound before, set its durability to 100%.
execute as @a[tag=atrium_rewind_item_caster] run item modify entity @s weapon.mainhand atrium:rewind_item/first_rewind
#
# Remove tag
execute as @e[tag=atrium_rewind_item_caster] run tag @s remove atrium_rewind_item_caster