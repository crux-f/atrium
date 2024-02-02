# Teleport Patrons of the Seamwalker tier or higher into their pocket dimension.
execute if entity @s[name="crux_f"] in atrium:between_worlds run tp @s 9999.5 1 10152.5
execute if entity @s[name="Konobeat"] in atrium:between_worlds run tp @s 9999.5 1 10040.5
# SFX & Text
execute if entity @s[predicate=atrium:in_between_worlds] run playsound minecraft:entity.ender_eye.death master @s ~ ~ ~ 1 0.25 1
execute if entity @s[predicate=atrium:in_between_worlds] at @s run particle minecraft:portal ~ ~1 ~ 0 0 0 1.25 150 normal
execute if entity @s[predicate=atrium:in_between_worlds] run tellraw @s {"text":"You slip between the worlds' seams, and emerge in your own little universe.","italic":true,"color":"dark_purple"}