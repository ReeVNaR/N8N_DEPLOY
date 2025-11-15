FROM n8nio/n8n:latest

# Recommended for security warnings
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# DO NOT set host or port here — Render overrides these
# Let Render ENV variables control them

CMD ["n8n"]
