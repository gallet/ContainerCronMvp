# Use an official Python runtime as a parent image
FROM python:3.11

# Set environment variables that can be modified when the container is run
ENV MY_ENV_VAR="default_value"

# Install cron
RUN apt-get update && apt-get -y install cron -y -qq


COPY cron /tmp/cron
COPY run_crond.sh run_crond.sh
RUN chmod +x run_crond.sh

# Copy your Python script into the container
COPY main.py /app/main.py

CMD ["/run_crond.sh"]