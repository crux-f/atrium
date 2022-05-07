# Revoke to allow retrigger
advancement revoke @s only atrium:triggers/treasure/badge_of_honor
#
# Clear item and replace it with an untagged version
clear @s minecraft:honeycomb{badge_of_honor:1b,used:0b}
give @s honeycomb{display:{Name:'{"text":"Badge of Honor","color":"gold","italic":false}',Lore:['[{"text":"Grants ","color":"gray","italic":false},{"text":"32 ❤ Reputation","color":"blue","italic":false}]','{"text":"the first time it\'s picked up.","color":"gray","italic":false}']},badge_of_honor:1b,used:1b} 1
#
# Increase Reputation by 32.
scoreboard players add @s reputation 32
#
# SFX
execute at @s run playsound minecraft:block.amethyst_cluster.place player @a[distance=..25] ~ ~ ~ 1 0.1 0.1
execute at @s run particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 1 25
