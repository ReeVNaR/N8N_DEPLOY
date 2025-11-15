FROM node:18-alpine

WORKDIR /app

# Install n8n globally
RUN npm install -g n8n

# Copy package files if they exist
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Expose n8n port
EXPOSE 5678

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=40s --retries=3 \
    CMD wget --quiet --tries=1 --spider http://localhost:5678/healthz || exit 1

# Start n8n
CMD ["n8n", "start"]
