# 1. Use official Node.js image
FROM node:18

# 2. Set working directory inside container
WORKDIR /app

# 3. Copy package.json first (best practice)
COPY package.json .

# 4. Install dependencies
RUN npm install

# 5. Copy application source code
COPY app.js .

# 6. Expose application port
EXPOSE 3000

# 7. Start the application
CMD ["npm", "start"]
