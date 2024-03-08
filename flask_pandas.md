git clone https://github.com/app-generator/flask-pandas-dataframe.git
cd flask-pandas-dataframe

sudo apt install python3-virtualenv
 # Virtualenv modules installation (Unix based systems)
 virtualenv env 

 source env/bin/activate

 # Install dependencies
 pip3 install -r requirements.txt

 # Create database via Flask CLI
 flask shell
>>> from app import db
>>> db.create_all()  
>>> quit()            

$ flask load-data titanic-min.csv

$ export FLASK_APP=app.py

flask run --host=0.0.0.0 --port=31201

#Changement du Docker file

#Build image
docker build -t flask-pandas .

#Push image on docker hub
docker login -u enzolivecampus

docker image tag pandas-flask:latest enzolivecampus/pandas-flask:latest

docker push enzolivecampus/pandas-flask:latest

#Run image flask-pandas

docker run -d --name pandas-flask -p 31201:31201 pandas-flask

#Jenkins sur goland

Connexion à jenkins avec mes identifiants (Je peux donc build à partir de l'ide Goland)

#Création d'une nouvelle pipeline 

Création du job flask-pandas-docker

Mettre dans le script shell :

echo '
#docker build -t pandas-flask .
#docker run -d --name pandas-flask -p 31201:31201 pandas-flask

#docker login -u enzolivecampus
#docker image tag pandas-flask:latest enzolivecampus/pandas-flask:latest
#docker push enzolivecampus/pandas-flask:latest
'

On fait une pipeline avec flask-pandas-docker et flask-pandas-jmeter

Création du web hook

On peut maintenant commit push et ça lance le build automatiquement







