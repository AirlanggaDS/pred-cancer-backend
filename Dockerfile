FROM node:20

# Create app directory
WORKDIR /app

ENV PORT=8080
ENV HOST=0.0.0.0
ENV MODEL_URL=https://storage.googleapis.com/airlangga-storage-buckets/submissions-model/model.json

# Copy package.json and package-lock.json for dependency management
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project files
COPY . .

# Expose port
EXPOSE 8080

# Start the server using the configured script
CMD [ "npm", "run", "start" ]