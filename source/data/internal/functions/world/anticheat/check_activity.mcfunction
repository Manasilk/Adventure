#These tags control whether players are found to be cheating without warden performing
# any comparison to the players' starting and end position
tag @s[tag=ANTICHEAT_FLAG_PLAYER_FLYING] remove ANTICHEAT_FLAG_PLAYER_FLYING
tag @s[tag=!ANTICHEAT_FLAG_PLAYER_FLYING,predicate=internal:world/player/data/flying] add ANTICHEAT_FLAG_PLAYER_FLYING
#Players whom are found dead will receive this tag to prevent warden counting respawn
# teleportation as cheating. This flag is reset upon the player respawning
tag @s[tag=!ANTICHEAT_FLAG_PLAYER_IGNORE,tag=SPELL_AURA_GHOST] add ANTICHEAT_FLAG_PLAYER_IGNORE
tag @s[tag=SPELL_EFFECT_TELEPORT] add ANTICHEAT_FLAG_PLAYER_IGNORE

#Update the maximum allow distance for horizontal and vertical planes
function internal:world/anticheat/info/get_movement_limits
function internal:world/anticheat/info/get_flags