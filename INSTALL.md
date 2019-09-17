# Installation:
For installation download the contents and follow the instructions below.
Open run command by pressing "Win+R"
Copy and paste the following into the "open" field: %AppData%\.minecraft\saves
Copy the contents of the datpack into any of the saves datapack folder

Archive everything in the "localization" folder and place them in the resourcepack folder, or:
Create a "resourcez.zip" pack which should contain contents from all lang files in each localization folder.
To add existing sounds, repeat the steps above for the "sounds" folder.

Run the following commands through chat:
/function common:utilities/_setup

# Requirements:
Minecraft 1.14.4 compatible world
Enable all relevant datapacks if disabled by default. 
Vanilla datapack is disabled by default when the function above is run.

--------------

To gain certain priviliges run this command through chat:
/function user_commands:rbac/toggle_admin

To receive debug messages run this command through chat:
/function user_commands:rbac/toggle_debug
* This requires 'rbac_access' score be set to >=1 beforehand