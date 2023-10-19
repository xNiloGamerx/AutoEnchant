execute as @a[tag=autoen_player_running_tutorial] at @s run teleport @s @e[type=armor_stand,tag=autoen_tutorial_spectator,limit=1]


execute as @e[type=armor_stand,tag=autoen_tutorial_player_model] if score time autoen_tutorial_time matches 20 run data remove entity @s HandItems[0]
execute as @e[type=armor_stand,tag=autoen_tutorial_player_model] at @s if score time autoen_tutorial_time matches 20 run summon item ~0.5 ~1 ~ {Motion:[0.3,0.2,0.0],Item:{id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:"minecraft:sharpness",lvl:5s}]}}}

execute as @a[tag=autoen_player_running_tutorial] at @s if score time autoen_tutorial_time matches 20 run tellraw @s ["",{"text":"[AutoEnchant Tutorial]","bold":true,"color":"red"},"\n",{"text":"1. ","bold":true,"color":"gold"},{"text":"Drop Enchanted Book on Enchanter","color":"gold"}]
execute as @a[tag=autoen_player_running_tutorial] at @s if score time autoen_tutorial_time matches 20 run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1


execute as @e[type=armor_stand,tag=autoen_tutorial_player_model] at @s if score time autoen_tutorial_time matches 60 run data modify entity @e[type=armor_stand,tag=autoen_item_holder,sort=nearest,limit=1] HandItems[0] set from entity @s HandItems[0]
execute as @e[type=armor_stand,tag=autoen_tutorial_player_model] at @s if score time autoen_tutorial_time matches 60 run data remove entity @s HandItems[0]

execute as @a[tag=autoen_player_running_tutorial] at @s if score time autoen_tutorial_time matches 60 run tellraw @s ["",{"text":"2. ","bold":true,"color":"gold"},{"text":"Right Click with item you want to enchant","color":"gold"}]
execute as @a[tag=autoen_player_running_tutorial] at @s if score time autoen_tutorial_time matches 60 run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1


execute as @a[tag=autoen_player_running_tutorial] at @s if score time autoen_tutorial_time matches 80 run tellraw @s ["",{"text":"3. ","bold":true,"color":"gold"},{"text":"Wait until its enchanted...","color":"gold"}]
execute as @a[tag=autoen_player_running_tutorial] at @s if score time autoen_tutorial_time matches 80 run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1


execute as @e[type=armor_stand,tag=autoen_tutorial_player_model] at @s if score time autoen_tutorial_time matches 120 run data modify entity @e[type=armor_stand,tag=autoen_item_holder,sort=nearest,limit=1] HandItems[0].tag set from entity @e[tag=autoen_data,sort=nearest,limit=1] data
execute as @a[tag=autoen_player_running_tutorial] at @s if score time autoen_tutorial_time matches 120 run tellraw @s ["",{"text":"3a. ","bold":true,"color":"gold"},{"text":"Like now...","color":"gold"}]
execute as @a[tag=autoen_player_running_tutorial] at @s if score time autoen_tutorial_time matches 120 run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1


execute as @e[type=armor_stand,tag=autoen_tutorial_player_model] at @s if score time autoen_tutorial_time matches 150 run data modify entity @s HandItems[0] set from entity @e[type=armor_stand,tag=autoen_item_holder,sort=nearest,limit=1] HandItems[0]
execute as @e[type=armor_stand,tag=autoen_tutorial_player_model] at @s if score time autoen_tutorial_time matches 150 run data remove entity @e[type=armor_stand,tag=autoen_item_holder,sort=nearest,limit=1] HandItems[0]

execute as @a[tag=autoen_player_running_tutorial] at @s if score time autoen_tutorial_time matches 150 run tellraw @s ["",{"text":"4. ","bold":true,"color":"gold"},{"text":"Get item back","color":"gold"}]
execute as @a[tag=autoen_player_running_tutorial] at @s if score time autoen_tutorial_time matches 150 run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1


execute as @a[tag=autoen_player_running_tutorial] at @s if score time autoen_tutorial_time matches 170 run tellraw @s ["",{"text":"INFO:","bold":true,"color":"red"},{"text":" Enchanting costs 5 levels, each time","color":"gold"}]
execute as @a[tag=autoen_player_running_tutorial] at @s if score time autoen_tutorial_time matches 170 run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1


execute as @a[tag=autoen_player_running_tutorial] at @s if score time autoen_tutorial_time matches 190 run tellraw @s [{"text":"I wish you a good time using it!","bold":true,"color":"gold"}]
execute as @a[tag=autoen_player_running_tutorial] at @s if score time autoen_tutorial_time matches 190 run playsound minecraft:block.note_block.harp ambient @s ~ ~ ~ 1 1


execute as @a[tag=autoen_player_running_tutorial] at @s if score time autoen_tutorial_time matches 210 run function autoenchant:tutorial/end_tutorial