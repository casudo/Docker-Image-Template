#!/bin/bash

### Get the environment variables
CHANGEME=${CHANGEME}
### Examples:
### DISCORD_WEBHOOK_URL=${DISCORD_WEBHOOK_URL}
### CRON_SCHEDULE=${CRON_SCHEDULE:-"0 0 * * *"}   ### The ':-"<value>"' part sets a default value if the variable is not set

### Display a welcoming message in Docker logs
echo "✅ Container started. Welcome!"
echo "⏳ Checking environment variables..."

### OPTIONAL: Check if the environment variables are set
if [ -z "$CHANGEME" ]; then
    echo "  ❌ CHANGEME is not set."    
else
    echo "  👍 CHANGEME is set."
fi
### Depending on your needs, you can add more complex checks for your environment variables, e.g. for a desired value

### Run your Python script
while true; do
    python3 /code/CHANGEME.py | tee /code/script.log

    ### OPTIONAL: Set a sleep time
    # sleep $SLEEP_TIME
done