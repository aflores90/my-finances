FROM node:lts-alpine

# copy both 'package.json' and 'package-lock.json' (if available)
COPY ["package.json", "package-lock.json", "/usr/src/"]

# make the 'app' folder the current working directory
WORKDIR /usr/src

# install project dependencies
RUN npm install

COPY [".", "/usr/src/"]

EXPOSE 4000
CMD [ "npm", "run", "dev" ]