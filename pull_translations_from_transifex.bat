echo "Pulling localisation files from Transifex"

echo "Usunięcie starych plików."
rd /s /q "pliki\\pl\\"

:: Force pull all translations
tx.exe pull --all --force -translations
pause