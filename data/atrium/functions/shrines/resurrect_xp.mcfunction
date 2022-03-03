# IF the Resurrectee has died X times AND the Resurrector can afford to pay X/2 EXP levels (round down), set Resurrectee to survival
execute if entity @p[tag=resurrectee,scores={deaths=1..3},distance=..10] if entity @p[tag=resurrector,level=1..] run gamemode survival @p[tag=resurrectee]
# IF the Resurrectee has died X times AND the Resurrector can afford to pay X/2 EXP levels (round down), take those levels
execute if entity @p[tag=resurrectee,scores={deaths=1..3},distance=..10] if entity @p[tag=resurrector,level=1..] run xp add @p[tag=resurrector] -1 levels
#
execute if entity @p[tag=resurrectee,scores={deaths=4..5},distance=..10] if entity @p[tag=resurrector,level=2..] run gamemode survival @p[tag=resurrectee]
execute if entity @p[tag=resurrectee,scores={deaths=4..5},distance=..10] if entity @p[tag=resurrector,level=2..] run xp add @p[tag=resurrector] -2 levels
execute if entity @p[tag=resurrectee,scores={deaths=6..7},distance=..10] if entity @p[tag=resurrector,level=3..] run gamemode survival @p[tag=resurrectee]
execute if entity @p[tag=resurrectee,scores={deaths=6..7},distance=..10] if entity @p[tag=resurrector,level=3..] run xp add @p[tag=resurrector] -3 levels
execute if entity @p[tag=resurrectee,scores={deaths=8..9},distance=..10] if entity @p[tag=resurrector,level=4..] run gamemode survival @p[tag=resurrectee]
execute if entity @p[tag=resurrectee,scores={deaths=8..9},distance=..10] if entity @p[tag=resurrector,level=4..] run xp add @p[tag=resurrector] -4 levels
execute if entity @p[tag=resurrectee,scores={deaths=10..11},distance=..10] if entity @p[tag=resurrector,level=5..] run gamemode survival @p[tag=resurrectee]
execute if entity @p[tag=resurrectee,scores={deaths=10..11},distance=..10] if entity @p[tag=resurrector,level=5..] run xp add @p[tag=resurrector] -5 levels
execute if entity @p[tag=resurrectee,scores={deaths=12..13},distance=..10] if entity @p[tag=resurrector,level=6..] run gamemode survival @p[tag=resurrectee]
execute if entity @p[tag=resurrectee,scores={deaths=12..13},distance=..10] if entity @p[tag=resurrector,level=6..] run xp add @p[tag=resurrector] -6 levels
execute if entity @p[tag=resurrectee,scores={deaths=14..15},distance=..10] if entity @p[tag=resurrector,level=7..] run gamemode survival @p[tag=resurrectee]
execute if entity @p[tag=resurrectee,scores={deaths=14..15},distance=..10] if entity @p[tag=resurrector,level=7..] run xp add @p[tag=resurrector] -7 levels
execute if entity @p[tag=resurrectee,scores={deaths=16..17},distance=..10] if entity @p[tag=resurrector,level=8..] run gamemode survival @p[tag=resurrectee]
execute if entity @p[tag=resurrectee,scores={deaths=16..17},distance=..10] if entity @p[tag=resurrector,level=8..] run xp add @p[tag=resurrector] -8 levels
execute if entity @p[tag=resurrectee,scores={deaths=18..19},distance=..10] if entity @p[tag=resurrector,level=9..] run gamemode survival @p[tag=resurrectee]
execute if entity @p[tag=resurrectee,scores={deaths=18..19},distance=..10] if entity @p[tag=resurrector,level=9..] run xp add @p[tag=resurrector] -9 levels
execute if entity @p[tag=resurrectee,scores={deaths=20..21},distance=..10] if entity @p[tag=resurrector,level=10..] run gamemode survival @p[tag=resurrectee]
execute if entity @p[tag=resurrectee,scores={deaths=20..21},distance=..10] if entity @p[tag=resurrector,level=10..] run xp add @p[tag=resurrector] -10 levels
execute if entity @p[tag=resurrectee,scores={deaths=22..23},distance=..10] if entity @p[tag=resurrector,level=11..] run gamemode survival @p[tag=resurrectee]
execute if entity @p[tag=resurrectee,scores={deaths=22..23},distance=..10] if entity @p[tag=resurrector,level=11..] run xp add @p[tag=resurrector] -11 levels
execute if entity @p[tag=resurrectee,scores={deaths=24..25},distance=..10] if entity @p[tag=resurrector,level=12..] run gamemode survival @p[tag=resurrectee]
execute if entity @p[tag=resurrectee,scores={deaths=24..25},distance=..10] if entity @p[tag=resurrector,level=12..] run xp add @p[tag=resurrector] -12 levels
execute if entity @p[tag=resurrectee,scores={deaths=26..27},distance=..10] if entity @p[tag=resurrector,level=13..] run gamemode survival @p[tag=resurrectee]
execute if entity @p[tag=resurrectee,scores={deaths=26..27},distance=..10] if entity @p[tag=resurrector,level=13..] run xp add @p[tag=resurrector] -13 levels
execute if entity @p[tag=resurrectee,scores={deaths=28..29},distance=..10] if entity @p[tag=resurrector,level=14..] run gamemode survival @p[tag=resurrectee]
execute if entity @p[tag=resurrectee,scores={deaths=28..29},distance=..10] if entity @p[tag=resurrector,level=14..] run xp add @p[tag=resurrector] -14 levels
execute if entity @p[tag=resurrectee,scores={deaths=30..31},distance=..10] if entity @p[tag=resurrector,level=15..] run gamemode survival @p[tag=resurrectee]
execute if entity @p[tag=resurrectee,scores={deaths=30..31},distance=..10] if entity @p[tag=resurrector,level=15..] run xp add @p[tag=resurrector] -15 levels
execute if entity @p[tag=resurrectee,scores={deaths=32..33},distance=..10] if entity @p[tag=resurrector,level=16..] run gamemode survival @p[tag=resurrectee]
execute if entity @p[tag=resurrectee,scores={deaths=32..33},distance=..10] if entity @p[tag=resurrector,level=16..] run xp add @p[tag=resurrector] -16 levels
execute if entity @p[tag=resurrectee,scores={deaths=34..35},distance=..10] if entity @p[tag=resurrector,level=17..] run gamemode survival @p[tag=resurrectee]
execute if entity @p[tag=resurrectee,scores={deaths=34..35},distance=..10] if entity @p[tag=resurrector,level=17..] run xp add @p[tag=resurrector] -17 levels
execute if entity @p[tag=resurrectee,scores={deaths=36..37},distance=..10] if entity @p[tag=resurrector,level=18..] run gamemode survival @p[tag=resurrectee]
execute if entity @p[tag=resurrectee,scores={deaths=36..37},distance=..10] if entity @p[tag=resurrector,level=18..] run xp add @p[tag=resurrector] -18 levels
execute if entity @p[tag=resurrectee,scores={deaths=38..39},distance=..10] if entity @p[tag=resurrector,level=19..] run gamemode survival @p[tag=resurrectee]
execute if entity @p[tag=resurrectee,scores={deaths=38..39},distance=..10] if entity @p[tag=resurrector,level=19..] run xp add @p[tag=resurrector] -19 levels
execute if entity @p[tag=resurrectee,scores={deaths=40..41},distance=..10] if entity @p[tag=resurrector,level=20..] run gamemode survival @p[tag=resurrectee]
execute if entity @p[tag=resurrectee,scores={deaths=40..41},distance=..10] if entity @p[tag=resurrector,level=20..] run xp add @p[tag=resurrector] -20 levels
execute if entity @p[tag=resurrectee,scores={deaths=42..43},distance=..10] if entity @p[tag=resurrector,level=21..] run gamemode survival @p[tag=resurrectee]
execute if entity @p[tag=resurrectee,scores={deaths=42..43},distance=..10] if entity @p[tag=resurrector,level=21..] run xp add @p[tag=resurrector] -21 levels
execute if entity @p[tag=resurrectee,scores={deaths=44..45},distance=..10] if entity @p[tag=resurrector,level=22..] run gamemode survival @p[tag=resurrectee]
execute if entity @p[tag=resurrectee,scores={deaths=44..45},distance=..10] if entity @p[tag=resurrector,level=22..] run xp add @p[tag=resurrector] -22 levels
execute if entity @p[tag=resurrectee,scores={deaths=46..47},distance=..10] if entity @p[tag=resurrector,level=23..] run gamemode survival @p[tag=resurrectee]
execute if entity @p[tag=resurrectee,scores={deaths=46..47},distance=..10] if entity @p[tag=resurrector,level=23..] run xp add @p[tag=resurrector] -23 levels
execute if entity @p[tag=resurrectee,scores={deaths=48..49},distance=..10] if entity @p[tag=resurrector,level=24..] run gamemode survival @p[tag=resurrectee]
execute if entity @p[tag=resurrectee,scores={deaths=48..49},distance=..10] if entity @p[tag=resurrector,level=24..] run xp add @p[tag=resurrector] -24 levels
execute if entity @p[tag=resurrectee,scores={deaths=50..51},distance=..10] if entity @p[tag=resurrector,level=25..] run gamemode survival @p[tag=resurrectee]
execute if entity @p[tag=resurrectee,scores={deaths=50..51},distance=..10] if entity @p[tag=resurrector,level=25..] run xp add @p[tag=resurrector] -25 levels
execute if entity @p[tag=resurrectee,scores={deaths=52..53},distance=..10] if entity @p[tag=resurrector,level=26..] run gamemode survival @p[tag=resurrectee]
execute if entity @p[tag=resurrectee,scores={deaths=52..53},distance=..10] if entity @p[tag=resurrector,level=26..] run xp add @p[tag=resurrector] -26 levels
execute if entity @p[tag=resurrectee,scores={deaths=54..55},distance=..10] if entity @p[tag=resurrector,level=27..] run gamemode survival @p[tag=resurrectee]
execute if entity @p[tag=resurrectee,scores={deaths=54..55},distance=..10] if entity @p[tag=resurrector,level=27..] run xp add @p[tag=resurrector] -27 levels
execute if entity @p[tag=resurrectee,scores={deaths=56..57},distance=..10] if entity @p[tag=resurrector,level=28..] run gamemode survival @p[tag=resurrectee]
execute if entity @p[tag=resurrectee,scores={deaths=56..57},distance=..10] if entity @p[tag=resurrector,level=28..] run xp add @p[tag=resurrector] -28 levels
execute if entity @p[tag=resurrectee,scores={deaths=58..59},distance=..10] if entity @p[tag=resurrector,level=29..] run gamemode survival @p[tag=resurrectee]
execute if entity @p[tag=resurrectee,scores={deaths=58..59},distance=..10] if entity @p[tag=resurrector,level=29..] run xp add @p[tag=resurrector] -29 levels
execute if entity @p[tag=resurrectee,scores={deaths=60..},distance=..10] if entity @p[tag=resurrector,level=30..] run gamemode survival @p[tag=resurrectee]
execute if entity @p[tag=resurrectee,scores={deaths=60..},distance=..10] if entity @p[tag=resurrector,level=30..] run xp add @p[tag=resurrector] -30 levels
