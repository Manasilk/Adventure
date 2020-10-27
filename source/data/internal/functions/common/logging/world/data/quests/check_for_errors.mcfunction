execute unless score #temp success = @s task_objectives run data modify storage internal:buffer iterator.current_item.type_name set value ERROR
execute unless score #temp success = @s task_objectives run data modify storage internal:buffer iterator.current_item.error_desc append value AREA_TRIGGER_LINK_DOES_NOT_EXIST

#execute if score #temp poi_err matches 1.. run data modify storage internal:buffer iterator.current_item.type_name set value ERROR
#execute if score #temp poi_err matches 1.. run data modify storage internal:buffer iterator.current_item.error_desc append value AREA_TRIGGER_POI_MISMATCH