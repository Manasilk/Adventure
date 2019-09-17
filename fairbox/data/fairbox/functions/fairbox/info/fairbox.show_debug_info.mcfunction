#/scoreboard objectives setdisplay sidebar WardenGetInfo
scoreboard players operation PositionX.First Debug.FairBox = @s _FB._PosX-0
scoreboard players operation PositionY.First Debug.FairBox = @s _FB._PosY-0
scoreboard players operation PositionZ.First Debug.FairBox = @s _FB._PosZ-0

scoreboard players operation PositionX.Last Debug.FairBox = @s _FB._PosX-1
scoreboard players operation PositionY.Last Debug.FairBox = @s _FB._PosY-1
scoreboard players operation PositionZ.Last Debug.FairBox = @s _FB._PosZ-1

scoreboard players operation LimitHorizontal Debug.FairBox = @s _FB._LimitH
scoreboard players operation LimitVertical Debug.FairBox = @s _FB._LimitV
scoreboard players operation FallingDistance Debug.FairBox = @s _FB._FreeFall

scoreboard players operation Player._FB.Flags Debug.FairBox = @s _FB.Flags
scoreboard players operation Pearl Debug.FairBox = @s SpellId_3001
scoreboard players operation Chorus Debug.FairBox = @s SpellId_3002