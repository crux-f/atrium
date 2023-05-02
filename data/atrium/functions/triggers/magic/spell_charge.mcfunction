# In this script, the user is already holding a staff and has the power slot for the spell they want to cast as their SelectedItem.
#
# Start charging
# Adds 1/tick for level 1, 2/tick for level 2, etc. (this covers up a potential cost exploit)
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:1b}}]} run scoreboard players add @s charge 1
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:2b}}]} run scoreboard players add @s charge 2
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run scoreboard players add @s charge 3
#
# SURGE Enchantment - Staves charge 2x faster
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_surge_enchanted:1b,atrium_staff_lv:1b}}]} run scoreboard players add @s charge 1
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_surge_enchanted:1b,atrium_staff_lv:2b}}]} run scoreboard players add @s charge 2
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_surge_enchanted:1b,atrium_staff_lv:3b}}]} run scoreboard players add @s charge 3
#
# At the 1, 2, and 3 second marks, absorb XP and play a sound.
# Level 1
execute if entity @s[scores={charge=20}] if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:1b}}]} run xp add @s -8 points
execute if entity @s[scores={charge=40}] if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:1b}}]} run xp add @s -8 points
execute if entity @s[scores={charge=60}] if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:1b}}]} run xp add @s -8 points
execute if entity @s[scores={charge=20}] if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:1b}}]} run playsound minecraft:entity.experience_orb.pickup player @a[distance=..10] ~ ~ ~ 0.35 0.5 0.05
execute if entity @s[scores={charge=40}] if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:1b}}]} run playsound minecraft:entity.experience_orb.pickup player @a[distance=..10] ~ ~ ~ 0.35 0.7 0.05
execute if entity @s[scores={charge=60}] if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:1b}}]} run playsound minecraft:entity.experience_orb.pickup player @a[distance=..10] ~ ~ ~ 0.35 0.9 0.05
# Level 2
execute if entity @s[scores={charge=40}] if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:2b}}]} run xp add @s -16 points
execute if entity @s[scores={charge=80}] if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:2b}}]} run xp add @s -16 points
execute if entity @s[scores={charge=120}] if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:2b}}]} run xp add @s -16 points
execute if entity @s[scores={charge=40}] if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:2b}}]} run playsound minecraft:entity.experience_orb.pickup player @a[distance=..10] ~ ~ ~ 0.35 0.5 0.05
execute if entity @s[scores={charge=80}] if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:2b}}]} run playsound minecraft:entity.experience_orb.pickup player @a[distance=..10] ~ ~ ~ 0.35 0.7 0.05
execute if entity @s[scores={charge=120}] if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:2b}}]} run playsound minecraft:entity.experience_orb.pickup player @a[distance=..10] ~ ~ ~ 0.35 0.9 0.05
# Level 3
execute if entity @s[scores={charge=60}] if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run xp add @s -24 points
execute if entity @s[scores={charge=120}] if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run xp add @s -24 points
execute if entity @s[scores={charge=160}] if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run xp add @s -24 points
execute if entity @s[scores={charge=60}] if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run playsound minecraft:entity.experience_orb.pickup player @a[distance=..10] ~ ~ ~ 0.35 0.5 0.05
execute if entity @s[scores={charge=120}] if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run playsound minecraft:entity.experience_orb.pickup player @a[distance=..10] ~ ~ ~ 0.35 0.7 0.05
execute if entity @s[scores={charge=160}] if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run playsound minecraft:entity.experience_orb.pickup player @a[distance=..10] ~ ~ ~ 0.35 0.9 0.05
#
# If the player has a fully charged staff, cast the selected spell.
# (this way annoys me but im doing it until i think of a more efficient way)
# Air
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_air_staff:1b}}]} at @s run function atrium:triggers/magic/cast/air_spell
# Earth
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_earth_staff:1b}}]} at @s run function atrium:triggers/magic/cast/earth_spell
# Fire
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_fire_staff:1b}}]} at @s run function atrium:triggers/magic/cast/fire_spell
# Water
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_water_staff:1b}}]} at @s run function atrium:triggers/magic/cast/water_spell
# Time
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_time_staff:1b}}]} at @s run function atrium:triggers/magic/cast/time_spell
# Space
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_space_staff:1b}}]} at @s run function atrium:triggers/magic/cast/space_spell