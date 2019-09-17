### VANILLA DATAPACK ###
# disabled by default
#datapack disable vanilla
### GAMERULES CONFIG ###
# SUBJECT TO CHANGE AT RC/RELEASE
# @PLAYER
gamerule keepInventory true
gamerule naturalRegeneration true
#
# @CHAT
gamerule showDeathMessages false
gamerule announceAdvancements false
#
# @SPAWN
gamerule doMobSpawning false
#
# @PICKUP
gamerule doMobLoot true
#
# @LOOT
gamerule doEntityDrops false
gamerule doTileDrops true
#
# @ENVIRONMENT
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doFireTick true
gamerule mobGriefing false
gamerule maxEntityCramming 0
gamerule randomTickSpeed 3
#
# @WORLDSPAWN
gamerule spawnRadius 0
#
# @SERVER
gamerule reducedDebugInfo false
gamerule sendCommandFeedback true
gamerule commandBlockOutput false
gamerule logAdminCommands true
gamerule maxCommandChainLength 65536
gamerule spectatorsGenerateChunks false
gamerule disableElytraMovementCheck true

#re-sync timers
execute if score #dbc.core _dbc.setup = #bool true run function server:game/time/synchronize_time