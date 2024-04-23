# Use an official Node runtime as a parent image
FROM node:18.15.0-alpine

# Set the working directory to /app
WORKDIR /

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install dependencies

RUN npm i -g @lambdatest/smartui-storybook
RUN npm install 
RUN apk add --no-cache \
    chromium \
    nss \
    freetype \
    harfbuzz \
    ca-certificates \
    ttf-freefont \
    && rm -rf /var/cache/*


# Copy the entire project directory to the container
COPY . .

# Set environment variable

ENV PROJECT_TOKEN=<ProjectToken>
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true
ENV PUPPETEER_EXECUTABLE_PATH /usr/bin/chromium-browser

# Build the Storybook static files
RUN npm run build-storybook

# Set the command to run when the container starts
CMD ["smartui", "storybook", "./storybook-static","--config",".smartui.json"]