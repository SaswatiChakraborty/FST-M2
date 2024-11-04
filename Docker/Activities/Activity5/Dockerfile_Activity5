# Specify Base Image
FROM docker.io/node:18-alpine

# Work Directory
WORKDIR /usr/app

#copy the package.json in to the container
COPY ./package.json /usr/app

# Install Dependencies
RUN npm install

#copy the rest of the files #this will update package.json as well 
COPY ./ ./

# Startup Command
CMD ["npm", "start"]