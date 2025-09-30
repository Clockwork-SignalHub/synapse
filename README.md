
# Synapse Fork

A customized fork of the Synapse Matrix server for the ClockWork App.
This repository contains a custom version of the Synapse Matrix server,
with modifications specific to our project. It is designed to be deployed using [synapse-local](https://github.com/Clockwork-SignalHub/Synapse-local).
The `synapse-local` repo contains deployment configuration (docker-compose,
Ansible scripts, nginx config, etc.) to run this Synapse fork locally or in production.
Please see that repository for deployment instructions.

---

## Repository Setup

### Clone the repository
```bash
git clone git@github.com:Clockwork-SignalHub/synapse.git
cd synapse-fork
```

### Build the Docker image
```bash
docker build -t ghcr.io/clockwork-signalhub/synapse:latest .
```
- This builds a Docker image in your local machine called synapse-fork:latest

---

## Workflow

1. Create a feature branch
Always work on a branch to keep changes isolated:
```bash
git checkout -b feature/my-change
```
###### Name your branch clearly to reflect your change (e.g., feature/add-authentication, feature/ai-integration).
2. Make changes
Edit the code in this fork to implement your feature or fix.
Keep commits clean and focused.
3. Push Changes

```bash
git add .
git commit -m "Describe your change"
git push origin feature/my-change
```
4. **Build the Docker image**
```bash
docker build -t ghcr.io/clockwork-signalhub/synapse:latest .
```
5. **Push the Docker image** to the registry (only do this once your changes work).
```bash
docker push ghcr.io/clockwork-signalhub/synapse-fork:latest .
```
6. Run Docker (in `synapse-local`) to test changes.
```bash
docker compose up -d --build
```

---

## References
- [Synapse Documentation](https://element-hq.github.io/synapse/latest/)
- [Matrix Protocol](https://matrix.org/docs/spec/)

