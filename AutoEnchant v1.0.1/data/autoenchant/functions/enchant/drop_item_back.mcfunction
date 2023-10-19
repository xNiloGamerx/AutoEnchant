execute at @e[type=marker,tag=autoen_data] if entity @a[tag=autoen_using_enchanter,distance=..5] run summon item ~ ~ ~ {Motion:[0.0,0.3,0.15],Tags:["autoen_dropped_item"],Item:{id:"minecraft:dirt",Count:1b}}
execute as @e[type=item,tag=autoen_dropped_item] at @s if entity @a[tag=autoen_using_enchanter,distance=..5] run data modify entity @s Item set from entity @e[type=armor_stand,tag=autoen_item_holder,distance=..2,limit=1] HandItems[1]
execute as @e[type=armor_stand,tag=autoen_item_holder] at @s if entity @e[type=item,tag=autoen_dropped_item,distance=1..] if entity @a[tag=autoen_using_enchanter, distance=..5] run data remove entity @s HandItems[1]

execute at @e[tag=autoen_data] run tag @a[tag=autoen_using_enchanter,distance=..5] remove autoen_using_enchanter