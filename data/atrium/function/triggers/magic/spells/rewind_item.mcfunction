# Tag caster
tag @s add atrium_rewind_item_caster
#
# Casting SFX
execute anchored eyes run particle minecraft:ash ^ ^ ^0.25 0.1 0.1 0.1 0 20
playsound minecraft:item.lodestone_compass.lock player @a[distance=..10] ~ ~ ~ 0.5 2 0.1
#
# Run the complete script 3 seconds later.
execute if entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}]}] run schedule function atrium:triggers/magic/spells/rewind_item_1 3s
execute if entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}]}] run schedule function atrium:triggers/magic/spells/rewind_item_2 3s
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete

