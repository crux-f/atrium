# Run by all scripts in the "unlock" folder
#
# Find the container that was just unlocked. We do this by running this function ONLY at a container that:
# A: has no LootTable tag (has already generated loot and therefor has been opened)
# and
# B: has a Lock tag that needs to be removed
execute at @s anchored eyes positioned ^ ^ ^1 unless data block ~ ~ ~ LootTable if data block ~ ~ ~ Lock run data remove block ~ ~ ~ Lock
execute at @s anchored eyes positioned ^ ^0.5 ^1 unless data block ~ ~ ~ LootTable if data block ~ ~ ~ Lock run data remove block ~ ~ ~ Lock
execute at @s anchored eyes positioned ^ ^-0.5 ^1 unless data block ~ ~ ~ LootTable if data block ~ ~ ~ Lock run data remove block ~ ~ ~ Lock
execute at @s anchored eyes positioned ^ ^ ^1.5 unless data block ~ ~ ~ LootTable if data block ~ ~ ~ Lock run data remove block ~ ~ ~ Lock
execute at @s anchored eyes positioned ^ ^ ^2 unless data block ~ ~ ~ LootTable if data block ~ ~ ~ Lock run data remove block ~ ~ ~ Lock
execute at @s anchored eyes positioned ^ ^0.5 ^2 unless data block ~ ~ ~ LootTable if data block ~ ~ ~ Lock run data remove block ~ ~ ~ Lock
execute at @s anchored eyes positioned ^ ^-0.5 ^2 unless data block ~ ~ ~ LootTable if data block ~ ~ ~ Lock run data remove block ~ ~ ~ Lock
execute at @s anchored eyes positioned ^ ^ ^2.5 unless data block ~ ~ ~ LootTable if data block ~ ~ ~ Lock run data remove block ~ ~ ~ Lock
execute at @s anchored eyes positioned ^ ^0.5 ^3 unless data block ~ ~ ~ LootTable if data block ~ ~ ~ Lock run data remove block ~ ~ ~ Lock
execute at @s anchored eyes positioned ^ ^-0.5 ^3 unless data block ~ ~ ~ LootTable if data block ~ ~ ~ Lock run data remove block ~ ~ ~ Lock
execute at @s anchored eyes positioned ^ ^ ^3 unless data block ~ ~ ~ LootTable if data block ~ ~ ~ Lock run data remove block ~ ~ ~ Lock
execute at @s anchored eyes positioned ^ ^ ^3.5 unless data block ~ ~ ~ LootTable if data block ~ ~ ~ Lock run data remove block ~ ~ ~ Lock
execute at @s anchored eyes positioned ^ ^ ^4 unless data block ~ ~ ~ LootTable if data block ~ ~ ~ Lock run data remove block ~ ~ ~ Lock
execute at @s anchored eyes positioned ^ ^0.5 ^4 unless data block ~ ~ ~ LootTable if data block ~ ~ ~ Lock run data remove block ~ ~ ~ Lock
execute at @s anchored eyes positioned ^ ^-0.5 ^4 unless data block ~ ~ ~ LootTable if data block ~ ~ ~ Lock run data remove block ~ ~ ~ Lock
execute at @s anchored eyes positioned ^ ^ ^4.5 unless data block ~ ~ ~ LootTable if data block ~ ~ ~ Lock run data remove block ~ ~ ~ Lock
execute at @s anchored eyes positioned ^ ^ ^5 unless data block ~ ~ ~ LootTable if data block ~ ~ ~ Lock run data remove block ~ ~ ~ Lock
execute at @s anchored eyes positioned ^ ^-0.5 ^5 unless data block ~ ~ ~ LootTable if data block ~ ~ ~ Lock run data remove block ~ ~ ~ Lock
execute at @s anchored eyes positioned ^ ^0.5 ^5 unless data block ~ ~ ~ LootTable if data block ~ ~ ~ Lock run data remove block ~ ~ ~ Lock