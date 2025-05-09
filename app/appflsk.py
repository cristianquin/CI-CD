import os
from flask import Flask
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

# Variables desde entorno
DB_HOST = os.environ.get('DB_HOST', 'localhost')
DB_NAME = os.environ.get('POSTGRES_DB', 'mydb')
DB_USER = os.environ.get('POSTGRES_USER', 'user')
DB_PASSWORD = os.environ.get('POSTGRES_PASSWORD', 'password')

# Cadena de conexión
app.config['SQLALCHEMY_DATABASE_URI'] = f'postgresql://{DB_USER}:{DB_PASSWORD}@{DB_HOST}/{DB_NAME}'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db = SQLAlchemy(app)

@app.route('/')
def home():
    return "¡Flask corriendo correctamente en Docker con PostgreSQL!"

if __name__ == '__main__':
    app.run(host='0.0.0.0')
