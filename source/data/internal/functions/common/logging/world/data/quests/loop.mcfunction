#Last item from iterating list as current item; Remove last item from itr list
data modify storage internal:buffer iterator.current_item set from storage internal:buffer iterator.shift_left[-1]
data remove storage internal:buffer iterator.shift_left[-1]

#Check if the event ID matches the target ID; Write data if true;
execute store result score #temp __event_id run data get storage internal:buffer iterator.current_item.id
execute if score @s __event_id = #temp __event_id run function internal:common/logging/world/data/quests/write_quest_data

#Push current element to the end of the iterated list
data modify storage internal:buffer iterator.shift_right prepend from storage internal:buffer iterator.current_item

#Check if more elements exist; Loop if true;
function internal:common/logging/world/data/quests/try_iterate