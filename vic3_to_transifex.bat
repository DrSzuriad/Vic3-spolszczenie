@echo off
setlocal enabledelayedexpansion

rd /s /q translations_temp
md translations_temp
set /p source="Podaj sciezke do folderu localisation z V3 (sciezka z \ na koncu): "
echo Konwertowanie plikow...


xcopy "%source%\*" "translations_temp\" /s /y

for %%A in ("%source%") do (
    set "folder_length=%%~pA"
)

for /r "%source%" %%f in (*) do (
    set "relative_path=%%~pf"
    set "relative_path=!relative_path:%folder_length%=!"
    set "path=!relative_path!%%~nxf"
    for %%F in (translations_temp\!path!) do (
	echo %cd%\%%F
	endlocal
	SETLOCAL DisableDelayedExpansion
    call jrepl "#[^\x22]*\n"^ "\n" /m /x /t "|" /f "%cd%\%%F" /o -
	)
	endlocal
	setlocal enabledelayedexpansion
)

endlocal

echo "Usunięcie starych plików."
rd /s /q "pliki\\en\\"


:: BUILDER SETTINGS
set charset=empty
set project_folder="pliki"
set parser="tools\\LocaleParser\\bin\\LocaleParser-0.1.11-SNAPSHOT.jar"
set fty=folder_to_yaml


echo "Przekonwertowanie plików z ck3 na standardowe pliki yml."
::game
java -jar "%parser%" "%fty%" "translations_temp\\game\\localization" "pliki\\en\\game\\localization" "%charset%"
java -jar "%parser%" "%fty%" "translations_temp\\game\\localization\\jomini\\script_system" "pliki\\en\\game\\localization\\jomini\\script_system" "%charset%"
java -jar "%parser%" "%fty%" "translations_temp\\game\\localization\\modifiers" "pliki\\en\\game\\localization\\modifiers" "%charset%"
java -jar "%parser%" "%fty%" "translations_temp\\game\\localization\\polish" "pliki\\en\\game\\localization\\polish" "%charset%"
java -jar "%parser%" "%fty%" "translations_temp\\game\\localization\\polish\\character" "pliki\\en\\game\\localization\\polish\\character" "%charset%"
java -jar "%parser%" "%fty%" "translations_temp\\game\\localization\\polish\\frontend" "pliki\\en\\game\\localization\\polish\\frontend" "%charset%"
java -jar "%parser%" "%fty%" "translations_temp\\game\\localization\\polish\\historical" "pliki\\en\\game\\localization\\polish\\historical" "%charset%"
java -jar "%parser%" "%fty%" "translations_temp\\game\\localization\\polish\\interest_groups" "pliki\\en\\game\\localization\\polish\\interest_groups" "%charset%"
java -jar "%parser%" "%fty%" "translations_temp\\game\\localization\\polish\\map" "pliki\\en\\game\\localization\\polish\\map" "%charset%"
::clausewitz
java -jar "%parser%" "%fty%" "translations_temp\\clausewitz\\localization" "pliki\\en\\clausewitz\\localization" "%charset%"
java -jar "%parser%" "%fty%" "translations_temp\\clausewitz\\localization\\text_utils" "pliki\\en\\clausewitz\\localization\\text_utils" "%charset%"
::jomini
java -jar "%parser%" "%fty%" "translations_temp\\jomini\\localization" "pliki\\en\\jomini\\localization" "%charset%"
java -jar "%parser%" "%fty%" "translations_temp\\jomini\\localization\\account" "pliki\\en\\jomini\\localization\\account" "%charset%"
java -jar "%parser%" "%fty%" "translations_temp\\jomini\\localization\\achievements" "pliki\\en\\jomini\\localization\\achievements" "%charset%"
java -jar "%parser%" "%fty%" "translations_temp\\jomini\\localization\\credits" "pliki\\en\\jomini\\localization\\credits" "%charset%"
java -jar "%parser%" "%fty%" "translations_temp\\jomini\\localization\\frontend" "pliki\\en\\jomini\\localization\\frontend" "%charset%"
java -jar "%parser%" "%fty%" "translations_temp\\jomini\\localization\\jomini" "pliki\\en\\jomini\\localization\\jomini" "%charset%"
java -jar "%parser%" "%fty%" "translations_temp\\jomini\\localization\\jomini\\coat_of_arms" "pliki\\en\\jomini\\localization\\jomini\\coat_of_arms" "%charset%"
java -jar "%parser%" "%fty%" "translations_temp\\jomini\\localization\\jomini\\multiplayer_gui" "pliki\\en\\jomini\\localization\\jomini\\multiplayer_gui" "%charset%"
java -jar "%parser%" "%fty%" "translations_temp\\jomini\\localization\\jomini\\script_system" "pliki\\en\\jomini\\localization\\jomini\\script_system" "%charset%"
java -jar "%parser%" "%fty%" "translations_temp\\jomini\\localization\\modifiers" "pliki\\en\\jomini\\localization\\modifiers" "%charset%"
java -jar "%parser%" "%fty%" "translations_temp\\jomini\\localization\\pops" "pliki\\en\\jomini\\localization\\pops" "%charset%"
java -jar "%parser%" "%fty%" "translations_temp\\jomini\\localization\\settings" "pliki\\en\\jomini\\localization\\settings" "%charset%"
java -jar "%parser%" "%fty%" "translations_temp\\jomini\\localization\\social" "pliki\\en\\jomini\\localization\\social" "%charset%"


rd /s /q translations_temp


echo "Koniec."
pause