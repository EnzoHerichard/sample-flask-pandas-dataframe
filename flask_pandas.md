$ git clone https://github.com/app-generator/flask-pandas-dataframe.git
$ cd flask-pandas-dataframe

sudo apt install python3-virtualenv
$ # Virtualenv modules installation (Unix based systems)
$ virtualenv env
$ source env/bin/activate
$
$ # Virtualenv modules installation (Windows based systems)
$ # virtualenv env
$ # .\env\Scripts\activate
$
$ # Install dependencies
$ pip3 install -r requirements.txt
$
$ # Create database via Flask CLI
$ flask shell
>>> from app import db  # import SqlAlchemy interface
>>> db.create_all()     # create SQLite database and Data table
>>> quit()              # leave the Flask CLI  

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

docker run -p 31201:31201  pandas-flask:latest








