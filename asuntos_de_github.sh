# !/bin/bash

# Este scipt se encarga de clonar o iniciar repositorios de github
# Probablemente sea mas facil hacerlo sin esto
# Pero habia que probar xd

git_user=$1
repo=$2
opc=$3

if [ $opc -eq 1 ]; then
	
	git clone https://github.com/$git_user/$repo.git


elif [ $opc -eq 2 ]; then
	echo "Se iniciara el repositorio local en el directorio actual"
	echo "Directorio actual: $(pwd)"
	echo "# test_bash" >> README.md
	git init
	git add README.md
	git commit -m "first commit"
	git branch -M main
	git remote add origin https://github.com/$git_user/$repo.git
	git push -u origin main
                
fi

