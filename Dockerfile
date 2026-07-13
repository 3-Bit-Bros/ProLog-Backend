FROM node:22-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install ALL dependencies (so we get tsx)
RUN npm install

# Copy all the backend source code
COPY . .

# Expose the backend port
EXPOSE 8001

# Bypass the build step completely and run the raw TypeScript natively!
CMD ["npx", "tsx", "src/index.ts"]