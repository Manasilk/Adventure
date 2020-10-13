#Apply attribute changes and effects in-case not spawned with them
attribute @s minecraft:generic.knockback_resistance base set 10
effect give @s minecraft:resistance 1000000 10 true

function internal:world/entity/object/get_object_position
function internal:world/entity/object/get_object_rotation
function internal:world/entity/set_entity_guid