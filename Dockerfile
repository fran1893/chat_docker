# Imagen base del sistema operativo
FROM node:19

# Directorio de trabajo de la aplicación
WORKDIR /app

COPY package*.json ./

RUN npm install

# COPY /src/ /app/       Con esto copiaria solo la carpeta src,  con la sentencia de abajo copia todo menos lo que ponemos en .dockerignore
COPY . .

CMD [ "npm", "start" ]