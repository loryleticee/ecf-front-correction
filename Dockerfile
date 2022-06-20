FROM node:lts-alpine

# installe un simple serveur http pour servir un contenu statique
RUN npm install -g http-server

WORKDIR /app
# définit le dossier 'app' comme dossier de travail

# copie les fichiers et dossiers du projet dans le dossier de travail (par exemple : le dossier 'app')
COPY . .

# installe les dépendances du projet
RUN npm install

# construit l'app pour la production en la minifiant
RUN npm run build


EXPOSE 8080

CMD [ "http-server", "dist" ]