execute as @e[type=armor_stand,tag=autoen_tutorial_player_model] at @s run setblock ~3 ~ ~ air

execute as @e[type=armor_stand,tag=autoen_tutorial_player_model] at @s run kill @e[type=marker,tag=autoen_data,sort=nearest]
execute as @e[type=armor_stand,tag=autoen_tutorial_player_model] at @s run kill @e[type=armor_stand,tag=item_holder,sort=nearest]
execute as @e[type=armor_stand,tag=autoen_tutorial_player_model] at @s run kill @e[type=text_display,tag=autoen_text_display_enchantment,sort=nearest]
execute as @e[type=armor_stand,tag=autoen_tutorial_player_model] at @s run kill @e[type=text_display,tag=autoen_text_display_title,sort=nearest]
execute as @e[type=armor_stand,tag=autoen_tutorial_player_model] at @s run kill @e[type=text_display,tag=autoen_text_display_enchantment_lvl,sort=nearest]

kill @e[type=armor_stand,tag=autoen_tutorial_player_model]

execute as @a[tag=autoen_player_running_tutorial] at @s run teleport ~ ~-100 ~

kill @e[type=armor_stand,tag=autoen_tutorial_spectator]