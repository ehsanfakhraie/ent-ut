# Static HTML Coolify Deployment

This folder is ready to deploy as a Dockerfile-based Coolify application.

## Coolify settings

- Build Pack: `Dockerfile`
- Port: `80`
- Healthcheck path: `/healthz`
- Domain: add your real domain in Coolify's Domains section

Coolify should handle HTTPS certificates and reverse proxy routing for the domain.
