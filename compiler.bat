@echo off
echo ============================================
echo     Compilation du jeu Harry Potter
echo ============================================
echo.

gcc -o mon_jeu.exe affichage.c IHM.c logique_jeu.c main.c sauvegarde.c -lalleg

if %ERRORLEVEL% == 0 (
    echo.
    echo ============================================
    echo   Compilation reussie ! Lancement du jeu...
    echo ============================================
    echo.
    mon_jeu.exe
) else (
    echo.
    echo ============================================
    echo   ERREUR de compilation !
    echo   Verifie qu'Allegro 4 est bien installe.
    echo ============================================
    echo.
    pause
)
