# Since I can onlu use data commands for mobs, I'm going to use "blizzard_spell" for their freeze timers too. save an objective
# Unless they already have a score, set it to 0.
execute unless entity @s[scores={blizzard_spell=0..}] run scoreboard players set @s blizzard_spell 0
# Store the mob's current TicksFrozen value (if the mob does not have a TicksFrozen value, the execute store command defaults to 0)
execute as @s store result score @s blizzard_spell run data get entity @s TicksFrozen 
# In vanilla, TicksFrozen increases by 1 whenever an entity is in powder snow. However it also decreases by 2 when an entity is not;
# Overcoming natural decrease = 2/tick.
scoreboard players add @s blizzard_spell 3
# 
# Set the mob's TicksFrozen value to the new one
execute store result entity @s TicksFrozen int 1 run scoreboard players get @s blizzard_spell
#
# Slowness I!
effect give @s minecraft:slowness 2 0 false