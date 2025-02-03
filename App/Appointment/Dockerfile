# Use Node.js as the base image
# FROM node:18

FROM public.ecr.aws/lambda/nodejs:20
# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application code
COPY appointment-service.js ${LAMDA_TASK_ROOT}

# Expose the application port
# EXPOSE 3001

# Start the application
# CMD ["npm", "start"]
CMD [ "appointment-service.handler" ]
