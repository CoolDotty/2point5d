ECHO OFF
set /P name=Enter name: 
vox2png %name%.vox %name%.png animated
PAUSE >nul