effect give @a[tag=event] minecraft:jump_boost 5 99
effect give @a[tag=event] minecraft:slowness 5 12
execute at @a[tag=event] run particle minecraft:warped_spore ~ ~ ~ 0.5 1.5 0.5 1 25
schedule function atrium:events/maycoes_tm/time_stop/time_stop_repeat 5t
