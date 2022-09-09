# 100-percent chance to remove researching tag early (if tag is removed early, give formula. Else, give notes)
tag @s remove researching
# Give formula if tag was removed
execute if entity @s[tag=!researching] run loot give @s loot atrium:treasure/any_research_major
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