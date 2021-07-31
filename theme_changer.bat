@echo off
SET mode=%1
SET background_changer="C:\Users\Esat Sefa Bayhan\Developing\Theme Changer\background_changer.py"
SET theme_chooser="C:\Users\Esat Sefa Bayhan\Developing\Theme Changer\theme_chooser.py"
SET light_theme="C:\Users\Esat Sefa Bayhan\Developing\Theme Changer\light_theme.reg"
SET dark_theme="C:\Users\Esat Sefa Bayhan\Developing\Theme Changer\dark_theme.reg"

IF "%mode%"=="light" (
    python %background_changer% light
    REG IMPORT %light_theme%

    goto skipper
)

IF "%mode%"=="dark" (
    python %background_changer% dark
    REG IMPORT %dark_theme%

    goto skipper
)

python %theme_chooser%

IF "%ERRORLEVEL%"=="10" (
    python %background_changer% light
    REG IMPORT %light_theme%

    goto skipper
)

IF "%ERRORLEVEL%"=="20" (
    python %background_changer% dark
    REG IMPORT %dark_theme%

    goto skipper
)

:skipper

echo "finished"