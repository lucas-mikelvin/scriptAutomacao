#!/bin/bash

echo "Script de automação!"

echo "Clonando repositório com arquivo jar"

git clone https://github.com/lucas-mikelvin/JavaExecute.git

which java | grep -q /urs/bin/java

if [[ $? = 0 ]]
	then
	echo "Executando arquivo java"
	java -jar app.jar
else	
	echo "Java não encontrado"
	echo "Instalando o java"
	sudo apt install curl
	curl -s "https://get.sdkman.io" | bash
	source "$HOME/.sdkman/bin/sdkman-init.sh"
	sdk install java 8.0.265.j9-adpt
	echo "Executando o java"
	java -jar app.jar	 	
fi


