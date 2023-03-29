# Run by atrium:entities/temporary_entity_manager when the blocks reach their expiration charge level
# (already run by the marker tracking the block at that block's location)
setblock ~ ~ ~ minecraft:air
particle minecraft:poof ~ ~ ~ 0.25 0.25 0.25 0 2 normal