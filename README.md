Themenschädel Infrastructure
============================

WIP: Full infrastructure of the themenschaedel application.

Installation
------------

1. `git clone https://github.com/sprechstunde-community/themenschaedel-infrastructure.git`
2. `cd themenschaedel-infrastructure`
3. Create an `.env`-file and set all needed properties. You can use the `.env.example`-file as a template.
4. Start reverse proxy: `docker-compose --env .env -f proxy/docker-compose.yml up -d`
5. Start backend server: `docker-compose --env .env -f backend/docker-compose.yml up -d`

Services
--------

**Hint**: Base domain is configurable, so we only display the subdomain here.

| Subdomain | Usage                                           |
|-----------|-------------------------------------------------|
| `account` | Account registration / management for users     |
| `api`     | Backend server handling requests by all clients |
| `traefik` | Reverse Proxy Dasboard                          |
| `www`     | Not implemented; reseved for web frontend       |

