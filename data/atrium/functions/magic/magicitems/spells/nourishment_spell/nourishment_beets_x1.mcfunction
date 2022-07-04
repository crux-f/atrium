execute at @e[tag=nourishment_marker] if block ~1 ~0.0625 ~ minecraft:beetroots[age=3] run setblock ~1 ~0.0625 ~ minecraft:beetroots[age=0] destroy
execute at @e[tag=nourishment_marker] if block ~1 ~0.0625 ~ minecraft:beetroots[age=2] run setblock ~1 ~0.0625 ~ minecraft:beetroots[age=3] replace
execute at @e[tag=nourishment_marker] if block ~1 ~0.0625 ~ minecraft:beetroots[age=1] run setblock ~1 ~0.0625 ~ minecraft:beetroots[age=2] replace
execute at @e[tag=nourishment_marker] if block ~1 ~0.0625 ~ minecraft:beetroots[age=0] run setblock ~1 ~0.0625 ~ minecraft:beetroots[age=1] replace
