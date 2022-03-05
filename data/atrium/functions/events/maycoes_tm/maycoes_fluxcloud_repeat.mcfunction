# add 1 to the charge counter
scoreboard players add @e[tag=maycoes] maycoes 1
# warn the target of the spell; actual spell triggers 0.5 seconds later
function atrium:events/maycoes_tm/maycoes_fluxcloud_warn
# IF the charge counter is 5 or less, run this again in 1 second.
execute if entity @e[scores={maycoes=..5}] run schedule function atrium:events/maycoes_tm/maycoes_fluxcloud_repeat 1s
# IF the charge counter reaches 6 or higher, tag maycoes with first_spell.
execute if entity @e[scores={maycoes=6..}] run tag @e[tag=maycoes] add first_spell
# IF the charge counter reaches 6 or higher, go back to the move phase.
execute if entity @e[scores={maycoes=6..}] run function atrium:events/maycoes_tm/maycoes_resume_move


