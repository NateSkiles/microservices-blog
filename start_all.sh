#!/bin/bash

# Start tmux session
tmux new-session -d -s app

# Start FE
tmux new-window -t app:1 -n 'Client' 'cd client && npm start'

# Start microservice servers
tmux new-window -t app:2 -n 'comments' 'cd comments && npm start'
tmux new-window -t app:3 -n 'event-bus' 'cd event-bus && npm start'
tmux new-window -t app:4 -n 'query' 'cd query && npm start'
tmux new-window -t app:5 -n 'posts' 'cd posts && npm start'

# Attach to tmux session
tmux attach-session -t app
