ARG FROM=netboxcommunity/netbox:v4.4-3.4.1
FROM ${FROM}

# Install plugin
RUN uv pip install netbox-topology-views

# Add SECRET_KEY so Django can run collectstatic during build
ENV SECRET_KEY="dummy_key_with_minimum_length----------------------------------"

# Collect static files
RUN python /opt/netbox/netbox/manage.py collectstatic --no-input
