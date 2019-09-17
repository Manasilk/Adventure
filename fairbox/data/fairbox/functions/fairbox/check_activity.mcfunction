#These tags control whether players are found to be cheating without warden performing
# any comparison to the players' starting and end position
tag @s[tag=FB_FLAG_PLAYER_FLYING] remove FB_FLAG_PLAYER_FLYING
tag @s[tag=!FB_FLAG_PLAYER_FLYING,nbt={abilities.flying:1b}] add FB_FLAG_PLAYER_FLYING
#Players whom are found dead will receive this tag to prevent warden counting respawn
# teleportation as cheating. This flag is reset upon the player respawning
tag @s[tag=!FB_FLAG_PLAYER_IGNORE,tag=SPELL_AURA_GHOST] add FB_FLAG_PLAYER_IGNORE

#Update the maximum allow distance for horizontal and vertical planes
function fairbox:fairbox/info/get_movement_limits
function fairbox:fairbox/info/get_flags