FROM node:16-slim

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .

# Build TypeScript code
RUN npm run build

ENV PORT 8080

# Expose the port
EXPOSE 8080

# Start the app
CMD ["node", "dist/index.js"]
