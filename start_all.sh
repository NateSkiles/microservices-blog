#!/bin/bash

# Start tmux session
tmux new-session -d -s app

# Start FE
tmux new-window -t app:1 -n 'client:3000' 'cd client && npm start'

# Start microservice servers
tmux new-window -t app:2 -n 'posts:4000' 'cd posts && npm start'
tmux new-window -t app:3 -n 'comments:4001' 'cd comments && npm start'
tmux new-window -t app:4 -n 'query:4002' 'cd query && npm start'
tmux new-window -t app:5 -n 'event-bus:4003' 'cd event-bus && npm start'

# Attach to tmux session
tmux attach-session -t app
