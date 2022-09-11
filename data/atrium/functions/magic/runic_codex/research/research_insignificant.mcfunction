# 10-percent chance to remove researching tag early (if tag is removed early, give formula. Else, give notes)
execute if predicate atrium:percentage_chances/0.15_p run function atrium:magic/runic_codex/research/minor_research_cauldron
execute if predicate atrium:percentage_chances/0.15_p run function atrium:magic/runic_codex/research/minor_research_codex
execute if predicate atrium:percentage_chances/0.15_p run function atrium:magic/runic_codex/research/minor_research_infusion
#
# Remove the item they were researching
execute as @s run function atrium:magic/runic_codex/research/remove_researched_item