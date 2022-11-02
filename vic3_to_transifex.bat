:: BUILDER SETTINGS
set charset=empty
set project_folder="pliki"
set parser="tools\\LocaleParser\\bin\\LocaleParser-0.1.11-SNAPSHOT.jar"

set fty=folder_to_yaml

cd "%project_folder%"
echo "Usunięcie starych plików."
del /s /f /q en
mkdir en
cd ../
echo "Przekonwertowanie plików z ck3 na standardowe pliki yml."
::game
java -jar "%parser%" "%fty%" "orginal\\game\\localization\\modifiers" "pliki\\en\\game\\localization\\modifiers" "%charset%"
java -jar "%parser%" "%fty%" "orginal\\game\\localization\\polish" "pliki\\en\\game\\localization\\polish" "%charset%"
java -jar "%parser%" "%fty%" "orginal\\game\\localization\\polish\\character" "pliki\\en\\game\\localization\\polish\\character" "%charset%"
java -jar "%parser%" "%fty%" "orginal\\game\\localization\\polish\\frontend" "pliki\\en\\game\\localization\\polish\\frontend" "%charset%"
java -jar "%parser%" "%fty%" "orginal\\game\\localization\\polish\\historical" "pliki\\en\\game\\localization\\polish\\historical" "%charset%"
java -jar "%parser%" "%fty%" "orginal\\game\\localization\\polish\\interest_groups" "pliki\\en\\game\\localization\\polish\\interest_groups" "%charset%"
java -jar "%parser%" "%fty%" "orginal\\game\\localization\\polish\\map" "pliki\\en\\game\\localization\\polish\\map" "%charset%"
::clausewitz
java -jar "%parser%" "%fty%" "orginal\\clausewitz\\localization" "pliki\\en\\clausewitz\\localization" "%charset%"
java -jar "%parser%" "%fty%" "orginal\\clausewitz\\localization\\text_utils" "pliki\\en\\clausewitz\\localization\\text_utils" "%charset%"
::jomini
java -jar "%parser%" "%fty%" "orginal\\jomini\\localization" "pliki\\en\\jomini\\localization" "%charset%"
java -jar "%parser%" "%fty%" "orginal\\jomini\\localization\\achievements" "pliki\\en\\jomini\\localization\\achievements" "%charset%"
java -jar "%parser%" "%fty%" "orginal\\jomini\\localization\\credits" "pliki\\en\\jomini\\localization\\credits" "%charset%"
java -jar "%parser%" "%fty%" "orginal\\jomini\\localization\\frontend" "pliki\\en\\jomini\\localization\\frontend" "%charset%"
java -jar "%parser%" "%fty%" "orginal\\jomini\\localization\\jomini" "pliki\\en\\jomini\\localization\\jomini" "%charset%"
java -jar "%parser%" "%fty%" "orginal\\jomini\\localization\\jomini\\coat_of_arms" "pliki\\en\\jomini\\localization\\jomini\\coat_of_arms" "%charset%"
java -jar "%parser%" "%fty%" "orginal\\jomini\\localization\\jomini\\map_editor" "pliki\\en\\jomini\\localization\\jomini\\map_editor" "%charset%"
java -jar "%parser%" "%fty%" "orginal\\jomini\\localization\\jomini\\multiplayer_gui" "pliki\\en\\jomini\\localization\\jomini\\multiplayer_gui" "%charset%"
java -jar "%parser%" "%fty%" "orginal\\jomini\\localization\\jomini\\script_system" "pliki\\en\\jomini\\localization\\jomini\\script_system" "%charset%"
java -jar "%parser%" "%fty%" "orginal\\jomini\\localization\\modifiers" "pliki\\en\\jomini\\localization\\modifiers" "%charset%"
java -jar "%parser%" "%fty%" "orginal\\jomini\\localization\\pops" "pliki\\en\\jomini\\localization\\pops" "%charset%"
java -jar "%parser%" "%fty%" "orginal\\jomini\\localization\\settings" "pliki\\en\\jomini\\localization\\settings" "%charset%"
java -jar "%parser%" "%fty%" "orginal\\jomini\\localization\\social" "pliki\\en\\jomini\\localization\\social" "%charset%"


echo "Koniec."
pause