FROM matrixdotorg/synapse:latest

COPY synapse /usr/local/lib/python3.11/site-packages/synapse

ENTRYPOINT ["/start.py"]
CMD ["--config-path", "/data/homeserver.yaml"]
