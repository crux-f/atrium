# 40-percent change to remove researching tag early (if tag is removed early, give formula. Else, give notes)
execute unless entity @e[distance=..10,tag=runic_codex,scores={codex=3..}] if predicate atrium:percentage_chances/0.40_p run tag @s remove researching
# Increase percentage based on research notes used
# Insignificant (+5%)
execute if entity @e[distance=..10,tag=runic_codex,scores={codex=3}] if predicate atrium:percentage_chances/0.45_p run tag @s remove researching
# Vague (+10%)
execute if entity @e[distance=..10,tag=runic_codex,scores={codex=4}] if predicate atrium:percentage_chances/0.50_p run tag @s remove researching
# Intricate (+20%)
execute if entity @e[distance=..10,tag=runic_codex,scores={codex=5}] if predicate atrium:percentage_chances/0.60_p run tag @s remove researching
# Esoteric (+30%)
execute if entity @e[distance=..10,tag=runic_codex,scores={codex=6}] if predicate atrium:percentage_chances/0.70_p run tag @s remove researching
#
# Give formula if tag was removed
execute if entity @s[tag=!researching] run loot give @s loot atrium:treasure/any_research_moderate
# Remove the item they were researching
execute as @s run function atrium:magic/runic_codex/research/remove_researched_item
#
# if the tag is still there, give the research notes instead.
execute if entity @s[tag=researching] run give @s paper{display:{Name:'{"text":"Research Notes","italic":false}',Lore:['{"text":"Personal","color":"green","italic":false}','{"text":"Intricate","color":"dark_green","italic":true}','{"text":" "}','{"text":"You\'ve got the feeling"}','{"text":"you\'re onto something."}','{"text":" "}','{"text":"When in Runic Codex:","color":"gray","italic":false}','{"text":"+20% Formula Chance","color":"blue","italic":false}']},research_notes:1b,personal:1b,relevance:2b} 1
#
# Remove the tag to stop the research regardless
tag @s remove researching
#
# Remove the insignificant tag if the player made it here
tag @s remove insignificant