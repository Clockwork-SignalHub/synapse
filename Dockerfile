# Dockerfile — Synapse fork with build-arg for site-packages path
FROM matrixdotorg/synapse:latest

# Build-time argument for site-packages path
ARG SYNAPSE_SITE_PACKAGES=/usr/local/lib/python3.11/site-packages

# Copy your fork's synapse code into the container
COPY synapse ${SYNAPSE_SITE_PACKAGES}/synapse

CMD ["run"]

