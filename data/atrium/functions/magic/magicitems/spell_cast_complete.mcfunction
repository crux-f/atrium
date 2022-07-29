# Reset all spellcasting scores to 0.
scoreboard players set @s airstaff 0
scoreboard players set @s earthstaff 0
scoreboard players set @s firestaff 0
scoreboard players set @s waterstaff 0
#
scoreboard players set @s timestaff 0
scoreboard players set @s spacestaff 0
#
scoreboard players set @s melodicstaff 0
scoreboard players set @s mercurialstaff 0
#
scoreboard players set @s spellbook 0
scoreboard players set @s scroll 0
#
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{concentration_lv:1b}}]}] if predicate atrium:percentage_chances/0.25_p as @s at @s run function atrium:triggers/enchantments/concentration/return_spell_xp
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{concentration_lv:2b}}]}] if predicate atrium:percentage_chances/0.50_p as @s at @s run function atrium:triggers/enchantments/concentration/return_spell_xp
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{concentration_lv:3b}}]}] if predicate atrium:percentage_chances/0.75_p as @s at @s run function atrium:triggers/enchantments/concentration/return_spell_xp