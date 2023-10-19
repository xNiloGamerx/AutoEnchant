# Add tag to player using the enchanting table
execute as @e[type=minecraft:interaction,tag=autoen_interaction] at @s on target run tag @s add autoen_using_enchanter

# Play interaction sound when no item is in the armorstand hand
execute as @e[type=minecraft:interaction,tag=autoen_interaction] at @s on target run function autoenchant:interaction_function/run_interaction_sound

# Set Timer scoreboard for player
execute as @e[type=minecraft:interaction,tag=autoen_interaction] at @s on target run scoreboard players set @s autoen_enchant_timer 1

# Return Item to player when item is in armorstand
execute as @e[type=minecraft:interaction,tag=autoen_interaction] at @s on target if data entity @e[type=armor_stand,tag=autoen_item_holder,sort=nearest,limit=1] HandItems[1].id if entity @s[tag=autoen_using_enchanter] run scoreboard players set @s autoen_enchant_timer 0

# Return Item to player when item is in armorstand
execute as @e[type=minecraft:interaction,tag=autoen_interaction] at @s on target if data entity @e[type=armor_stand,tag=autoen_item_holder,sort=nearest,limit=1] HandItems[1].id if entity @s[tag=autoen_using_enchanter] run function autoenchant:enchant/drop_item_back

# Add SelectedItem from user to itemholder
execute as @e[type=minecraft:interaction,tag=autoen_interaction] at @s on target run data modify entity @e[tag=autoen_item_holder,sort=nearest,limit=1] HandItems[1] set from entity @s SelectedItem

# Run remove item function to make illusion player is giving item to armorstand
execute as @e[type=minecraft:interaction,tag=autoen_interaction] at @s on target run function autoenchant:interaction_function/remove_item_from_player

# Remove data so interation can detect again
execute as @e[type=interaction,tag=autoen_interaction] at @s run data remove entity @s interaction