FROM node:18.18.0
ENV NODE_ENV=development
ENV PORT=80
EXPOSE 80
WORKDIR /usr/src/app
COPY ["package*.json", "package-lock.json*", "./"]
RUN npm install && mv node_modules ../
COPY . .
RUN chown -R node /usr/src/app
USER node
CMD ["npm", "run", "dev:teamsfx"]
