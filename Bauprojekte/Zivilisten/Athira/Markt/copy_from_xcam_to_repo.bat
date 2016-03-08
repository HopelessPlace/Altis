@echo off

copy "%PROGRAMFILES(x86)%\Steam\steamapps\common\Arma 3\@inidbi\db\xCam\Library_Pro\_xCamProjects.ini" _xcamProjects.ini
copy "%PROGRAMFILES(x86)%\Steam\steamapps\common\Arma 3\@inidbi\db\xCam\Library_Pro\Altis_AthiraMarkt.ini" Altis_AthiraMarkt.ini
copy "%PROGRAMFILES(x86)%\Steam\steamapps\common\Arma 3\mission_Altis_AthiraMarkt.sqm" mission.sqm

del "%PROGRAMFILES(x86)%\Steam\steamapps\common\Arma 3\mission_Altis_AthiraMarkt.sqm"