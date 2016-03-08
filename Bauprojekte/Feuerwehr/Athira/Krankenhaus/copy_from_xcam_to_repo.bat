@echo off

copy "%PROGRAMFILES(x86)%\Steam\steamapps\common\Arma 3\@inidbi\db\xCam\Library_Pro\_xCamProjects.ini" _xcamProjects.ini
copy "%PROGRAMFILES(x86)%\Steam\steamapps\common\Arma 3\@inidbi\db\xCam\Library_Pro\Altis_KrankenhausAthira.ini" Altis_KrankenhausAthira.ini

copy "%PROGRAMFILES(x86)%\Steam\steamapps\common\Arma 3\mission_Altis_KrankenhausAthira.sqm" mission.sqm
del "%PROGRAMFILES(x86)%\Steam\steamapps\common\Arma 3\mission_Altis_KrankenhausAthira.sqm"
