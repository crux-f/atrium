# Set the xp_calc_storage score to the number of total number of points they have to have to be that level (i can't believe you're making me do this mojang)
#
# Splitting these into pieces so it doesn't need to check every single value every time
#
# Set to 0 first.
scoreboard players set @s xp_calc_storage 0
execute if entity @s[level=1..10] as @s run function atrium:misc/xp_calculators/pieces/lv_1_to_10
execute if entity @s[level=11..20] as @s run function atrium:misc/xp_calculators/pieces/lv_11_to_20
execute if entity @s[level=21..30] as @s run function atrium:misc/xp_calculators/pieces/lv_21_to_30
execute if entity @s[level=31..40] as @s run function atrium:misc/xp_calculators/pieces/lv_31_to_40
execute if entity @s[level=41..50] as @s run function atrium:misc/xp_calculators/pieces/lv_41_to_50
execute if entity @s[level=51..60] as @s run function atrium:misc/xp_calculators/pieces/lv_51_to_60
execute if entity @s[level=61..70] as @s run function atrium:misc/xp_calculators/pieces/lv_61_to_70
execute if entity @s[level=71..80] as @s run function atrium:misc/xp_calculators/pieces/lv_71_to_80
execute if entity @s[level=81..90] as @s run function atrium:misc/xp_calculators/pieces/lv_81_to_90
execute if entity @s[level=91..100] as @s run function atrium:misc/xp_calculators/pieces/lv_91_to_100
#
# Ridiculousness
execute if entity @s[level=101..150] as @s run function atrium:misc/xp_calculators/pieces/lv_101_to_150
#
# Add the extra bits you have
execute store result score @s xp_calc_bonus run xp query @s points
scoreboard players operation @s xp_calc_storage += @s xp_calc_bonus
scoreboard players set @s xp_calc_bonus 0