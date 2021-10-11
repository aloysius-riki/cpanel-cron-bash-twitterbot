#!/usr/bin/env bash

if pgrep -x "python3.8_bin" > /dev/null
then
    echo "The script is already running"
else
    echo "Starting the bot now"
    run_bot () {
    source ~/virtualenv/pythonbotapp/3.8/bin/activate && cd ~/pythonbotapp
    python3 cpanel-cron-bash-twitterbot/bots/autoreply.py
    pwd
    }
    run_bot
fi