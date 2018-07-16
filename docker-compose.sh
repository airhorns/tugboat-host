#!/usr/bin/env bash
export IP=$(ipconfig getifaddr en0)
export TURTLEBOT_IP=$(resin device 851079b | grep "IP ADDRESS" | awk '{ print $3 }')
docker-compose -f docker-compose.simulation.yml "$@"
