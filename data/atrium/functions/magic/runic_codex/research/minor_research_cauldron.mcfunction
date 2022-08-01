# If the researcher is carrying one of the items for minor research, remove the insignificant tag.
execute if predicate atrium:inv_check/research/research_minor_cauldron run tag @s remove insignificant

# 50-percent change to remove researching tag early (if tag is removed early, give formula. Else, give notes)
execute unless entity @e[distance=..10,tag=runic_codex,scores={codex=3..}] if predicate atrium:percentage_chances/0.50_p run tag @s remove researching
# Increase percentage based on research notes used
# Insignificant (+5%)
execute if entity @e[distance=..10,tag=runic_codex,scores={codex=3}] if predicate atrium:percentage_chances/0.55_p run tag @s remove researching
# Vague (+10%)
execute if entity @e[distance=..10,tag=runic_codex,scores={codex=4}] if predicate atrium:percentage_chances/0.60_p run tag @s remove researching
# Intricate (+20%)
execute if entity @e[distance=..10,tag=runic_codex,scores={codex=5}] if predicate atrium:percentage_chances/0.70_p run tag @s remove researching
# Esoteric (+30%)
execute if entity @e[distance=..10,tag=runic_codex,scores={codex=6}] if predicate atrium:percentage_chances/0.80_p run tag @s remove researching
#
# Give formula if tag was removed
execute if entity @s[tag=!researching] run loot give @s loot atrium:treasure/formulas_cauldron_1
# Remove the item they were researching
item modify entity @s weapon.mainhand atrium:decrease_count_by_1
# if the tag is still there, and you aren't insignificant give the minor research notes instead
execute if entity @s[tag=researching,tag=!insignificant] run give @s paper{display:{Name:'{"text":"Research Notes","italic":false}',Lore:['{"text":"Personal","color":"green","italic":false}','{"text":"Vague","color":"gray","italic":true}','{"text":" "}','{"text":"You\'ve had the impression"}','{"text":"of an idea."}','{"text":" "}','{"text":"When in Runic Codex:","color":"gray","italic":false}','{"text":"+10% Formula Chance","color":"blue","italic":false}']},research_notes:1b,personal:1b,relevance:1b} 1
#
# if you are still insignificant (you scrub) then give the insignificant notes.
execute if entity @s[tag=researching,tag=insignificant] run give @s paper{display:{Name:'{"text":"Research Notes","italic":false}',Lore:['{"text":"Personal","color":"green","italic":false}','{"text":"Insignificant","color":"dark_gray","italic":true}','{"text":" "}','{"text":"You just had to scribble"}','{"text":"down your garbled thoughts."}','{"text":" "}','{"text":"When in Runic Codex:","color":"gray","italic":false}','{"text":"+5% Formula Chance","color":"blue","italic":false}']},research_notes:1b,personal:1b,relevance:0b} 1
# Remove the tag to stop the research regardless
tag @s remove researching
#
# Remove the insignificant tag if the player made it here
tag @s remove insignificant