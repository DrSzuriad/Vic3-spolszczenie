:: BUILDER SETTINGS
set lang=pl
set charset=empty
set project_folder="Spolszczenie_Vic3"
set parser="tools\\LocaleParser\\bin\\LocaleParser-0.1.11-SNAPSHOT.jar"
set sup=folder_supply
set fte=folder_to_eu4

echo "Starting conversion of translated files from Transifex into the EU4 format for workshop delivery and automated mod building."
echo "Removing temp directory - might say does not exist. That is normal, just a precaution."
rd /s /q temp
echo "Starting compiling latest source strings directory for CK3 format into the temp supply directory"
::game
java -jar "%parser%" "%sup%" "pliki\\pl\\game\\localization" "pliki\\en\\game\\localization\\modifiers" "temp\\supply\\game\\localization" yaml
java -jar "%parser%" "%sup%" "pliki\\pl\\game\\localization\\jomini\\script_system" "pliki\\en\\game\\localization\\modifiers" "temp\\supply\\game\\localization\\jomini\\script_system" yaml
java -jar "%parser%" "%sup%" "pliki\\pl\\game\\localization\\modifiers" "pliki\\en\\game\\localization\\modifiers" "temp\\supply\\game\\localization\\modifiers" yaml
java -jar "%parser%" "%sup%" "pliki\\pl\\game\\localization\\polish" "pliki\\en\\game\\localization\\polish" "temp\\supply\\game\\localization\\polish" yaml
java -jar "%parser%" "%sup%" "pliki\\pl\\game\\localization\\polish\\character" "pliki\\en\\game\\localization\\polish\\character" "temp\\supply\\game\\localization\\polish\\character" yaml
java -jar "%parser%" "%sup%" "pliki\\pl\\game\\localization\\polish\\frontend" "pliki\\en\\game\\localization\\polish\\frontend" "temp\\supply\\game\\localization\\polish\\frontend" yaml
java -jar "%parser%" "%sup%" "pliki\\pl\\game\\localization\\polish\\historical" "pliki\\en\\game\\localization\\polish\\historical" "temp\\supply\\game\\localization\\polish\\historical" yaml
java -jar "%parser%" "%sup%" "pliki\\pl\\game\\localization\\polish\\interest_groups" "pliki\\en\\game\\localization\\polish\\interest_groups" "temp\\supply\\game\\localization\\polish\\interest_groups" yaml
java -jar "%parser%" "%sup%" "pliki\\pl\\game\\localization\\polish\\map" "pliki\\en\\game\\localization\\polish\\map" "temp\\supply\\game\\localization\\polish\\map" yaml
::clausewitz
java -jar "%parser%" "%sup%" "pliki\\pl\\clausewitz\\localization" "pliki\\en\\clausewitz\\localization" "temp\\supply\\clausewitz\\localization" yaml
java -jar "%parser%" "%sup%" "pliki\\pl\\clausewitz\\localization\\text_utils" "pliki\\en\\clausewitz\\localization\\text_utils" "temp\\supply\\clausewitz\\localization\\text_utils" yaml
::jomini
java -jar "%parser%" "%sup%" "pliki\\pl\\jomini\\localization" "pliki\\en\\jomini\\localization" "temp\\supply\\jomini\\localization" yaml
java -jar "%parser%" "%sup%" "pliki\\pl\\jomini\\localization\\account" "pliki\\en\\jomini\\localization\\account" "temp\\supply\\jomini\\localization\\account" yaml
java -jar "%parser%" "%sup%" "pliki\\pl\\jomini\\localization\\achievements" "pliki\\en\\jomini\\localization\\achievements" "temp\\supply\\jomini\\localization\\achievements" yaml
java -jar "%parser%" "%sup%" "pliki\\pl\\jomini\\localization\\credits" "pliki\\en\\jomini\\localization\\credits" "temp\\supply\\jomini\\localization\\credits" yaml
java -jar "%parser%" "%sup%" "pliki\\pl\\jomini\\localization\\frontend" "pliki\\en\\jomini\\localization\\frontend" "temp\\supply\\jomini\\localization\\frontend" yaml
java -jar "%parser%" "%sup%" "pliki\\pl\\jomini\\localization\\jomini" "pliki\\en\\jomini\\localization\\jomini" "temp\\supply\\jomini\\localization\\jomini" yaml
java -jar "%parser%" "%sup%" "pliki\\pl\\jomini\\localization\\jomini\\coat_of_arms" "pliki\\en\\jomini\\localization\\jomini\\coat_of_arms" "temp\\supply\\jomini\\localization\\jomini\\coat_of_arms" yaml
java -jar "%parser%" "%sup%" "pliki\\pl\\jomini\\localization\\jomini\\multiplayer_gui" "pliki\\en\\jomini\\localization\\jomini\\multiplayer_gui" "temp\\supply\\jomini\\localization\\jomini\\multiplayer_gui" yaml
java -jar "%parser%" "%sup%" "pliki\\pl\\jomini\\localization\\jomini\\script_system" "pliki\\en\\jomini\\localization\\jomini\\script_system" "temp\\supply\\jomini\\localization\\jomini\\script_system" yaml
java -jar "%parser%" "%sup%" "pliki\\pl\\jomini\\localization\\modifiers" "pliki\\en\\jomini\\localization\\modifiers" "temp\\supply\\jomini\\localization\\modifiers" yaml
java -jar "%parser%" "%sup%" "pliki\\pl\\jomini\\localization\\pdx_account" "pliki\\en\\jomini\\localization\\pdx_account" "temp\\supply\\jomini\\localization\\pdx_account" yaml
java -jar "%parser%" "%sup%" "pliki\\pl\\jomini\\localization\\settings" "pliki\\en\\jomini\\localization\\settings" "temp\\supply\\jomini\\localization\\settings" yaml
java -jar "%parser%" "%sup%" "pliki\\pl\\jomini\\localization\\social" "pliki\\en\\jomini\\localization\\social" "temp\\supply\\jomini\\localization\\social" yaml


echo "Starting compiling latest translations to desired language - in this case - polish."
::game
java -jar "%parser%" "%fte%" "temp\\supply\\game\\localization" "temp\\vic3\\game\\localization" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply\\game\\localization\\jomini\\script_system" "temp\\vic3\\game\\localization\\jomini\\script_system" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply\\game\\localization\\modifiers" "temp\\vic3\\game\\localization\\modifiers" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply\\game\\localization\\polish" "temp\\vic3\\game\\localization\\polish" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply\\game\\localization\\polish\\character" "temp\\vic3\\game\\localization\\polish\\character" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply\\game\\localization\\polish\\frontend" "temp\\vic3\\game\\localization\\polish\\frontend" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply\\game\\localization\\polish\\historical" "temp\\vic3\\game\\localization\\polish\\historical" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply\\game\\localization\\polish\\interest_groups" "temp\\vic3\\game\\localization\\polish\\interest_groups" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply\\game\\localization\\polish\\map" "temp\\vic3\\game\\localization\\polish\\map" "%charset%"
::clausewitz
java -jar "%parser%" "%fte%" "temp\\supply\\clausewitz\\localization" "temp\\vic3\\clausewitz\\localization" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply\\clausewitz\\localization\\text_utils" "temp\\vic3\\clausewitz\\localization\\text_utils" "%charset%"
::jomini
java -jar "%parser%" "%fte%" "temp\\supply\\jomini\\localization" "temp\\vic3\\jomini\\localization" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply\\jomini\\localization\\account" "temp\\vic3\\jomini\\localization\\account" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply\\jomini\\localization\\achievements" "temp\\vic3\\jomini\\localization\\achievements" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply\\jomini\\localization\\credits" "temp\\vic3\\jomini\\localization\\credits" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply\\jomini\\localization\\frontend" "temp\\vic3\\jomini\\localization\\frontend" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply\\jomini\\localization\\jomini" "temp\\vic3\\jomini\\localization\\jomini" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply\\jomini\\localization\\jomini\\coat_of_arms" "temp\\vic3\\jomini\\localization\\jomini\\coat_of_arms" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply\\jomini\\localization\\jomini\\multiplayer_gui" "temp\\vic3\\jomini\\localization\\jomini\\multiplayer_gui" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply\\jomini\\localization\\jomini\\script_system" "temp\\vic3\\jomini\\localization\\jomini\\script_system" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply\\jomini\\localization\\modifiers" "temp\\vic3\\jomini\\localization\\modifiers" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply\\jomini\\localization\\pdx_account" "temp\\vic3\\jomini\\localization\\pdx_account" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply\\jomini\\localization\\settings" "temp\\vic3\\jomini\\localization\\settings" "%charset%"
java -jar "%parser%" "%fte%" "temp\\supply\\jomini\\localization\\social" "temp\\vic3\\jomini\\localization\\social" "%charset%"


cd "%project_folder%"
echo "Removing old localisations"
del /s /f /q game
mkdir game
del /s /f /q jomini
mkdir jomini
del /s /f /q clausewitz
mkdir clausewitz
del abcd.txt
cd ../
echo "Copying new localisation"
xcopy /s temp\\vic3 "%project_folder%"
echo "Cleaning up temp directory."
rd /s /q temp
echo "Temp directory cleaned up, goodbye, have a nice day! :smile:
pause