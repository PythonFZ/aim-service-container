#!/bin/bash

# Run the first aim server on port 43800
aim server --host 0.0.0.0 --port 43800 &

# Run the second aim server on port 53800
aim up --host 0.0.0.0 --port 53800 &

# Wait for all background processes to finish
wait
