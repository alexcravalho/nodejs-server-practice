FROM node:14-alpine
MAINTAINER Alex Cravalho <alex.cravalho@ibm.com>
ENV PORT=5000
WORKDIR /project
COPY zippedfolder.zip /project
RUN unzip zippedfolder.zip
WORKDIR /project/app
RUN npm install
EXPOSE 5000
CMD ["node", "server.js"]
