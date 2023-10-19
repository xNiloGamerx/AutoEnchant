execute as @a at @s if entity @e[tag=autoen_data, distance=..5] store result score @s autoen_current_level run experience query @s levels

execute as @a at @s if entity @e[tag=autoen_data, distance=..5] if score @s autoen_current_level >= amount autoen_increase_level run experience add @s -5 levels


execute as @e[type=interaction, tag=autoen_interaction] at @s[type=interaction, tag=autoen_interaction] if entity @a[tag=autoen_using_enchanter, distance=..5] if score @a[tag=autoen_using_enchanter,distance=..5,limit=1] autoen_current_level >= amount autoen_increase_level run data modify entity @e[tag=autoen_item_holder,sort=nearest,limit=1] HandItems[1].tag set from entity @e[tag=autoen_data,sort=nearest,limit=1] data
execute if entity @a[tag=autoen_using_enchanter, distance=..5] if score @a[tag=autoen_using_enchanter,distance=..5,limit=1] autoen_current_level >= amount autoen_increase_level run function autoenchant:enchant/drop_item_back