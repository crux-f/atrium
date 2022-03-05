# IN REVERSE ORDER so that it doesn't cast everything
# Unless the fifth spell has already been cast this cycle, check if the fourth spell has. If it has, cast the fifth spell.
execute unless entity @e[tag=fifth_spell] if entity @e[tag=fourth_spell] run function atrium:events/maycoes_tm/maycoes_darkness_cast
# Unless the fourth spell has already been cast this cycle, check if the third spell has. If it has, cast the fourth spell.
execute unless entity @e[tag=fourth_spell] if entity @e[tag=third_spell] run function atrium:events/maycoes_tm/maycoes_conjure_warn
# Unless the third spell has already been cast this cycle, check if the second spell has. If it has, cast the third spell.
execute unless entity @e[tag=third_spell] if entity @e[tag=second_spell] run function atrium:events/maycoes_tm/maycoes_magic_burn_warn
# Unless the second spell has already been cast this cycle, check if the first spell has. If it has, cast the second spell.
execute unless entity @e[tag=second_spell] if entity @e[tag=first_spell] run function atrium:events/maycoes_tm/maycoes_maze_warn
# Unless the first spell has already been cast this cycle, cast it.
execute unless entity @e[tag=first_spell] run function atrium:events/maycoes_tm/maycoes_fluxcloud_repeat
