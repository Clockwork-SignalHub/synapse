FROM matrixdotorg/synapse:latest

COPY synapse /usr/local/lib/python3.11/site-packages/synapse

ENTRYPOINT ["python", "-m", "synapse.app.homeserver"]
CMD ["--config-path", "/data/homeserver.yaml"]
