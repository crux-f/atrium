# Seamwalkers can teleport to a pocket dimension.
# This activates when any player steps on a seamwalker's door pressure plate
execute if entity @s[name="crux_f"] in atrium:between_worlds run tp @s 24014.5 1 -2184.5
execute if entity @s[name="Konobeat"] in atrium:between_worlds run tp @s -26977.5 1 -2167.5
execute if entity @s[name="Rose_Thorn14"] in atrium:between_worlds run tp @s -24993.5 1 -2167.5
execute if entity @s[name="shadow_knight6"] in atrium:between_worlds run tp @s -30001.5 1 -2167.5
execute if entity @s[predicate=atrium:in_between_worlds] run playsound minecraft:entity.ender_eye.death master @s ~ ~ ~ 1 0.25 1
execute if entity @s[predicate=atrium:in_between_worlds] at @s run particle minecraft:portal ~ ~1 ~ 0 0 0 1.25 150 normal
execute if entity @s[predicate=atrium:in_between_worlds] run tellraw @s {"text":"You slip between the worlds' seams, and emerge in your own little universe.","italic":true,"color":"dark_purple"}