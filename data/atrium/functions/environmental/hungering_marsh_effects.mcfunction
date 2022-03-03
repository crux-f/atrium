effect give @a[predicate=atrium:in_hungering_marsh] minecraft:hunger 2 1 true
effect give @e[predicate=atrium:in_hungering_marsh_water,type=!minecraft:slime,type=!minecraft:witch] minecraft:poison 2 0 true
schedule function atrium:environmental/hungering_marsh_effects 1s
