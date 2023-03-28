# Casting particles
particle minecraft:poof ~ ~ ~ 0.3 0.3 0.3 0.05 70
# Extra particle for level III
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run particle minecraft:explosion ~ ~ ~ 0 0 0 0.5 1
# Casting sfx
playsound minecraft:ui.toast.out player @a[distance=..15] ~ ~ ~ 15 0.8 1
# If the caster is sprinting, give Speed. If not, give Jump Boost instead.
# Increase Velocity I: Effect level I for 60 seconds
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:1b}}]} run effect give @s[predicate=atrium:player/is_sprinting] minecraft:speed 60 0
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:1b}}]} run effect give @s[predicate=!atrium:player/is_sprinting] minecraft:jump_boost 60 0
# Increase Velocity II: Effect level II for 120 seconds
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:2b}}]} run effect give @s[predicate=atrium:player/is_sprinting] minecraft:speed 120 1
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:2b}}]} run effect give @s[predicate=!atrium:player/is_sprinting] minecraft:jump_boost 120 1
# Increase Velocity III: Effect level III for 120 seconds
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run effect give @s[predicate=atrium:player/is_sprinting] minecraft:speed 120 2
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run effect give @s[predicate=!atrium:player/is_sprinting] minecraft:jump_boost 120 2
#
#
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete
