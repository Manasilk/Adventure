
execute if score #log __event_idef matches 1001 run data modify storage log:world_builder event[-1].idef_name set value WORLD_BUILDER_EDIT_ENTITY
execute if score #log __event_idef matches 1002 run data modify storage log:world_builder event[-1].idef_name set value WORLD_BUILDER_SPAWN_ENTITY
execute if score #log __event_idef matches 1003 run data modify storage log:world_builder event[-1].idef_name set value WORLD_BUILDER_DESPAWN_ENTITY
execute if score #log __event_idef matches 1004 run data modify storage log:world_builder event[-1].idef_name set value WORLD_BUILDER_EDIT_OBJECT
execute if score #log __event_idef matches 1005 run data modify storage log:world_builder event[-1].idef_name set value WORLD_BUILDER_SPAWN_OBJECT
execute if score #log __event_idef matches 1006 run data modify storage log:world_builder event[-1].idef_name set value WORLD_BUILDER_DESPAWN_OBJECT