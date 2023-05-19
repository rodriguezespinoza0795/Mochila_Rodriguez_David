#!/bin/bash

# chmod +x script.sh -> Dar permiso de ejecución
# ./script.sh -> Ejecutar archivo bash
# Move to desktop
cd ~/Desktop/

# Create folders
mkdir DH DH/movies
# We can create 5 folders with a command
mkdir DH/movies/Kids DH/movies/Action DH/movies/Horror DH/movies/Comedy DH/movies/Romantic

# Create files
cd DH/movies/ ## pwd -> DH/movies/
# We can create 4 files with a command
touch Kids/Intenzamente.txt Kids/"El juego del miedo.xls" Kids/"Rapido y furioso.pdf" Kids/Titanic.jpg
touch Action/"Smooth criminal.txt" Action/"Diario de una pasion.js" Action/"El hexorcista.xls" Action/Cars.jpg
touch Horror/"La dama y el bagavundo.png" Horror/"Yo antes de ti.xls" Horror/"Que paso ayer.pdf" Horror/"We will rock you.js"
touch Comedy/Madagaskar.js Comedy/"Orgullo y prejuicio.txt" Comedy/IT.xls Comedy/"Mision imposible.png"
touch Romantic/Pocahontas.jpg Romantic/Annabelle.js Romantic/"Los vengadores.js" Romantic/"La mascara.js"

# We can create a test folder
cd .. ## pwd -> DH
mkdir movies/Romantic/test
cd movies/Romantic/ ## pwd -> DH/movies/Romantic
mkdir ../Action/test2

# Move movies to correct category
cd ..  ## pwd -> DH/movies
mv Action/Cars.jpg Kids/
mv Action/"Diario de una pasion.js" Romantic/
mv Action/"El hexorcista.xls" Horror/
mv Comedy/IT.xls Horror/
mv Comedy/Madagaskar.js Kids/
mv Comedy/"Mision imposible.png" Action/
mv Comedy/"Orgullo y prejuicio.txt" Romantic/
mv Horror/"La dama y el bagavundo.png" Kids/
mv Horror/"Que paso ayer.pdf" Comedy/
mv Horror/"Yo antes de ti.xls" Romantic/
mv Kids/"El juego del miedo.xls" Horror/
mv Kids/"Rapido y furioso.pdf" Action/
mv Kids/Titanic.jpg Romantic/
mv Romantic/Annabelle.js Horror/
mv Romantic/"La mascara.js" Comedy/
mv Romantic/"Los vengadores.js" Action/
mv Romantic/Pocahontas.jpg Kids/

# Correct misspellings.
cd .. ## pwd -> DH
mv movies/Kids/Madagaskar.js movies/Kids/Madagascar.js
mv movies/Kids/"La dama y el bagavundo.png" movies/Kids/"La dama y el vagabundo.png"
mv movies/Kids/Intenzamente.txt movies/Kids/Intensamente.txt

# Delete Songs.
rm movies/Horror/"We will rock you.js"
rm movies/Action/"Smooth criminal.txt"

## Last instructions
touch movies/Action/test2/noBorrar.js
cd movies/ ## pwd -> DH/movies
mv Action/test2/noBorrar.js Romantic/noBorrar.js
cd .. ## pwd -> DH
touch camadax.txt
cd movies/ ## pwd -> DH/movies
mv Horror/IT.xls Kids/
rm ../camadax.txt
rmdir Romantic/test/
