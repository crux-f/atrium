# 30-percent change to remove researching tag early (if tag is removed early, give formula. Else, give notes)
execute unless entity @e[distance=..10,tag=runic_codex,scores={codex=3..}] if predicate atrium:percentage_chances/0.30_p run tag @s remove researching
# Increase percentage based on research notes used
# Insignificant (+5%)
execute if entity @e[distance=..10,tag=runic_codex,scores={codex=3}] if predicate atrium:percentage_chances/0.35_p run tag @s remove researching
# Vague (+10%)
execute if entity @e[distance=..10,tag=runic_codex,scores={codex=4}] if predicate atrium:percentage_chances/0.40_p run tag @s remove researching
# Intricate (+20%)
execute if entity @e[distance=..10,tag=runic_codex,scores={codex=5}] if predicate atrium:percentage_chances/0.50_p run tag @s remove researching
# Esoteric (+30%)
execute if entity @e[distance=..10,tag=runic_codex,scores={codex=6}] if predicate atrium:percentage_chances/0.60_p run tag @s remove researching
#
# Give formula if tag was removed
execute if entity @s[tag=!researching] run loot give @s loot atrium:treasure/formulas_codex_3
# Remove the item they were researching
execute as @s run function atrium:magic/runic_codex/research/remove_researched_item
#
# if the tag is still there, give the research notes instead.
execute if entity @s[tag=researching] run give @s paper{display:{Name:'{"text":"Research Notes","italic":false}',Lore:['{"text":"Personal","color":"green","italic":false}','{"text":"Esoteric","color":"dark_aqua","italic":true}','{"text":" "}','{"text":"You\'re sure this could"}','{"text":"have been a breakthrough"}','{"text":"if you hadn\'t written so fast."}','{"text":" "}','{"text":"When in Runic Codex:","color":"gray","italic":false}','{"text":"+30% Formula Chance","color":"blue","italic":false}']},research_notes:1b,personal:1b,relevance:3b} 1
#
# Remove the tag to stop the research regardless
tag @s remove researching
#
# Remove the insignificant tag if the player made it here
tag @s remove insignificant