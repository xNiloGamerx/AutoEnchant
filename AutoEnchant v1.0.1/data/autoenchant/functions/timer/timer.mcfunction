execute as @a[scores={autoen_enchant_timer=1..100}] at @s run scoreboard players add @s autoen_enchant_timer 1
execute as @a[scores={autoen_enchant_timer=100}] at @s run function autoenchant:enchant/enchant_item
execute as @a[tag=!autoen_using_enchanter] at @s run scoreboard players set @s autoen_enchant_timer 0