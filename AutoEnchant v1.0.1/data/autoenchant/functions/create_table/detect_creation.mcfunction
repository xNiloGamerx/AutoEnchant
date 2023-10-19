# Check if a AutoEnchanter is in the range of 5 blocks if so than make a tellraw with the information
execute as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book"}}] at @s if block ~ ~-0.3 ~ enchanting_table if entity @e[type=marker, tag=autoen_data, tag=autoen_used_marker, distance=..5] if entity @e[type=marker,tag=autoen_data,distance=1..] run function autoenchant:create_table/throw_backs/to_near


# Check if item has two enchantments
execute as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book"}}] at @s if block ~ ~-0.3 ~ enchanting_table if data entity @s Item.tag.StoredEnchantments[1] unless entity @e[type=marker,tag=autoen_data,distance=1..] run function autoenchant:create_table/throw_backs/two_en


# Run creation when book is on enchanting table and there is no used marker in 2 block range
execute as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book"}}] at @s if block ~ ~-0.3 ~ enchanting_table unless entity @e[type=marker, tag=autoen_data, tag=autoen_used_marker, distance=..5] unless data entity @s Item.tag.StoredEnchantments[1] run function autoenchant:create_table/create_function