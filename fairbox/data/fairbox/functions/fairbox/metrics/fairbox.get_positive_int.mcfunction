#This function is used to convert any negative position value to positive:
scoreboard players operation @s[scores={_FB._PosX-0=..-1}] _FB._PosX-0 *= #const CNVT_OPP
scoreboard players operation @s[scores={_FB._PosY-0=..-1}] _FB._PosY-0 *= #const CNVT_OPP
scoreboard players operation @s[scores={_FB._PosZ-0=..-1}] _FB._PosZ-0 *= #const CNVT_OPP

scoreboard players operation @s[scores={_FB._PosX-1=..-1}] _FB._PosX-1 *= #const CNVT_OPP
scoreboard players operation @s[scores={_FB._PosY-1=..-1}] _FB._PosY-1 *= #const CNVT_OPP
scoreboard players operation @s[scores={_FB._PosZ-1=..-1}] _FB._PosZ-1 *= #const CNVT_OPP