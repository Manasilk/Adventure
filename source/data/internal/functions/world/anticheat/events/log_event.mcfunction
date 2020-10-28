execute if entity @s[tag=ANTICHEAT_FLAG_PLAYER_TELEPORT] run function internal:common/logging/anticheat/event/anticheat_detect_teleport
execute if entity @s[tag=ANTICHEAT_FLAG_PLAYER_FLYING] run function internal:common/logging/anticheat/event/anticheat_detect_flying

function internal:common/logging/anticheat/register_event