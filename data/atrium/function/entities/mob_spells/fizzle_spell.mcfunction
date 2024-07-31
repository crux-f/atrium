# Same as the Mercurial Staff except only targets players.
#
execute at @s run particle minecraft:large_smoke ~ ~1.25 ~ 0.25 0.25 0.25 0.1 10 normal
execute as @p[predicate=atrium:player/targetable_and_visible,distance=..25,nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:1b}}}]}] run scoreboard players set @s charge -60
execute as @p[predicate=atrium:player/targetable_and_visible,distance=..25,nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}]}] run scoreboard players set @s charge -120
execute as @p[predicate=atrium:player/targetable_and_visible,distance=..25,nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}]}] run scoreboard players set @s charge -180
execute at @p[predicate=atrium:player/targetable_and_visible,distance=..25,nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff:1b}}}]}] run playsound minecraft:block.bubble_column.whirlpool_inside player @a[distance=..15] ~ ~ ~ 1 0.5 0.1
execute at @p[predicate=atrium:player/targetable_and_visible,distance=..25,nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff:1b}}}]}] run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.1 50 normal
# Reset score
scoreboard players set @s charge 0
# Chances for a longer cooldown
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 20