# Chance to be run by lich_idle every second.
# Run the working sound that is appropriate to the block(s) the lich is standing next to
execute if block ~1 ~1 ~ minecraft:brewing_stand run playsound minecraft:block.brewing_stand.brew hostile @a[distance=..12] ~ ~ ~ 1 1 0.1
execute if block ~-1 ~1 ~ minecraft:brewing_stand run playsound minecraft:block.brewing_stand.brew hostile @a[distance=..12] ~ ~ ~ 1 1 0.1
execute if block ~ ~1 ~1 minecraft:brewing_stand run playsound minecraft:block.brewing_stand.brew hostile @a[distance=..12] ~ ~ ~ 1 1 0.1
execute if block ~ ~1 ~-1 minecraft:brewing_stand run playsound minecraft:block.brewing_stand.brew hostile @a[distance=..12] ~ ~ ~ 1 1 0.1
#
execute if block ~1 ~ ~ minecraft:enchanting_table run playsound minecraft:block.enchantment_table.use hostile @a[distance=..12] ~ ~ ~ 1 1 0.1
execute if block ~-1 ~ ~ minecraft:enchanting_table run playsound minecraft:block.enchantment_table.use hostile @a[distance=..12] ~ ~ ~ 1 1 0.1
execute if block ~ ~ ~1 minecraft:enchanting_table run playsound minecraft:block.enchantment_table.use hostile @a[distance=..12] ~ ~ ~ 1 1 0.1
execute if block ~ ~ ~-1 minecraft:enchanting_table run playsound minecraft:block.enchantment_table.use hostile @a[distance=..12] ~ ~ ~ 1 1 0.1
#
execute if block ~1 ~ ~ minecraft:lectern run playsound minecraft:item.book.page_turn hostile @a[distance=..12] ~ ~ ~ 1 1 0.1
execute if block ~-1 ~ ~ minecraft:lectern run playsound minecraft:item.book.page_turn hostile @a[distance=..12] ~ ~ ~ 1 1 0.1
execute if block ~ ~ ~1 minecraft:lectern run playsound minecraft:item.book.page_turn hostile @a[distance=..12] ~ ~ ~ 1 1 0.1
execute if block ~ ~ ~-1 minecraft:lectern run playsound minecraft:item.book.page_turn hostile @a[distance=..12] ~ ~ ~ 1 1 0.1
#
execute if block ~1 ~ ~ minecraft:bookshelf run playsound minecraft:item.book.page_turn hostile @a[distance=..12] ~ ~ ~ 1 1 0.1
execute if block ~-1 ~ ~ minecraft:bookshelf run playsound minecraft:item.book.page_turn hostile @a[distance=..12] ~ ~ ~ 1 1 0.1
execute if block ~ ~ ~1 minecraft:bookshelf run playsound minecraft:item.book.page_turn hostile @a[distance=..12] ~ ~ ~ 1 1 0.1
execute if block ~ ~ ~-1 minecraft:bookshelf run playsound minecraft:item.book.page_turn hostile @a[distance=..12] ~ ~ ~ 1 1 0.1