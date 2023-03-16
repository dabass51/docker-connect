#!/bin/bash

# Get a list of all running Docker containers
containers=$(docker ps --format "{{.Names}}")

# Check if there are any running containers
if [ -z "$containers" ]; then
  echo "No running containers found"
  exit 1
fi

# Print the list of running containers with incremental numbers
echo "Running containers:"
counter=1
for c in $containers; do
  echo "$counter. $c"
  ((counter++))
done

# Ask the user which container to connect to by number
read -p "Enter the number of the container to connect to: " container_number

# Check if the entered container number is valid
if (( container_number < 1 || container_number > counter - 1 )); then
  echo "Invalid container number"
  exit 1
fi

# Extract the container name from the list using the selected number
container_name=$(echo "$containers" | sed -n "${container_number}p")

# Connect to the selected container via `docker exec -it`
docker exec -it "$container_name" bash
