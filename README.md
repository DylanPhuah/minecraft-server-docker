# minecraft-server-docker

This is a simple Minecraft docker compose setup.

## Usage
- Update the `docker-compose.yaml` file with your desired settings.
    - add your volume mounts for your world data
        - `./path/to/your/world/data:/data`
    - add your environment variables for your server settings
        - `EULA=true`
        - `PORT:25565`


## Run
```bash
make up ## docker compose up
```

## Stop
```bash
make down ## docker compose down
```