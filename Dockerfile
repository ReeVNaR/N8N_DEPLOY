FROM n8nio/n8n:latest

# Fix settings file permission warning
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678

# Use the entrypoint with start command instead of direct command
CMD ["start"]
