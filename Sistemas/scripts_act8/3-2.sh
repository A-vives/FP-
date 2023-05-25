#!/bin/bash


user_id=$(Stat -c %U $1)
agent_id$(Stat -c %A $1)

echo "el propietario de $1 es $user_id y tiene los permisos $agent_id"

