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
