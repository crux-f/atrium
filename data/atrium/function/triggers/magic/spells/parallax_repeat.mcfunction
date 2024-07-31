# Decrease spell timer
scoreboard players remove @e[tag=atrium_parallax_target] atrium_parallax_timer 1
#
# Whenever a target has its duration expire, run the return script
execute as @e[scores={atrium_parallax_timer=..0}] at @s run function atrium:triggers/magic/spells/parallax_return
#
# Keep repeating the script until all durations expire
execute if entity @e[scores={atrium_parallax_timer=1..}] run schedule function atrium:triggers/magic/spells/parallax_repeat 1t
