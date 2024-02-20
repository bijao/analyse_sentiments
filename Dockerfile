# Utilisez une image Python officielle comme base
FROM python:3.8

# Définissez le répertoire de travail dans le conteneur
WORKDIR /app

# Copiez les fichiers requis dans le conteneur
COPY . .

# Installez les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposez le port nécessaire pour accéder à votre application web
EXPOSE 8888

# Lancez le notebook Jupyter lors du démarrage du conteneur
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "Sentiment_Analysis_notebook.ipynb"]

