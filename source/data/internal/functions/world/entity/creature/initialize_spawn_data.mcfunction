function internal:world/entity/creature/set_default_data
function internal:world/entity/creature/set_default_rank
function internal:world/entity/creature/set_default_flags
function internal:world/entity/creature/set_default_attributes
function internal:world/entity/creature/set_default_react_state
function internal:world/entity/creature/set_default_script
function internal:world/entity/creature/get_spawn_position
execute if entity @s[tag=ENTITY_FLAG_SPECIALINFO] run function internal:world/entity/creature/set_default_nameplate

tag @s add creature.initialized_spawn_data