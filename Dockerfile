# Verwenden eines Python-Basis-Images
FROM python:3.9-slim

# Arbeitsverzeichnis im Container festlegen
WORKDIR /app

# Abhängigkeiten kopieren
COPY requirements.txt .

# Abhängigkeiten installieren
RUN pip install -r requirements.txt

# Die App in den Container kopieren
COPY . .

# Die Flask-App starten
CMD ["python", "app.py"]
