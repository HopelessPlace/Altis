@echo off

@echo.
@echo THIS WILL REMOVE YOUR LOCAL FILES.
@echo IT WILL DESTROY THE WORK YOU DID LOCALLY.
@echo.
@echo PRESS space TO CONTINUE. YOUR LOCAL WORK WILL BE DESTROYED.
@echo.
@echo TO ABORT JUST CLOSE THIS WINDOW AND DO NOT PRESS space.
@echo.

@pause

@copy _xcamProjects.ini "%PROGRAMFILES(x86)%\Steam\steamapps\common\Arma 3\@inidbi\db\xCam\Library_Pro\_xCamProjects.ini"
@copy Altis_KrankenhausAthira.ini "%PROGRAMFILES(x86)%\Steam\steamapps\common\Arma 3\@inidbi\db\xCam\Library_Pro\Altis_KrankenhausAthira.ini"
