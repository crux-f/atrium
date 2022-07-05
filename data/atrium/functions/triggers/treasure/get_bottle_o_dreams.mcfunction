# Unlike most of these, this comes from a different trigger (see dream.mcfunction)
#
# Replace Bottle o' Enchanting with Bottle o' Dreams
clear @s minecraft:experience_bottle 1
give @s experience_bottle{display:{Name:'{"text":"Bottle o\' Dreams","color":"light_purple","italic":false}',Lore:['{"text":"A special memory"}','{"text":"swirls within."}']},bottle_o_dreams:1b} 1
#
# SFX
playsound minecraft:block.large_amethyst_bud.place player @a[distance=..10] ~ ~ ~ 1 1.5 0.1
tellraw @s {"text":"You awake in the morning with the bottle clutched in your hand. Its contents have taken on a cloud-like quality.","italic":true,"color":"light_purple"}