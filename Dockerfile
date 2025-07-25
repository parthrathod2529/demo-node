# # Use Node.js LTS image
# FROM node:18

# # Set working directory
# WORKDIR /usr/src/app

# # Copy package files and install dependencies
# COPY package*.json ./
# RUN npm install

# # Copy rest of the app
# COPY . .

# # Expose port
# EXPOSE 3000

# # Start the app
# CMD [ "npm", "start" ]

# Use AWS-hosted mirror of node:18 to avoid DockerHub limits
FROM public.ecr.aws/docker/library/node:18

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]
