# Step 1: Start all of the containers
docker compose up -d

# Step 2: Initialize the replica sets (config servers and shards)
docker compose exec configsvr01 sh -c "mongosh < /scripts/init-configserver.js"
docker compose exec shard01-a sh -c "mongosh < /scripts/init-shard01.js"
docker compose exec shard02-a sh -c "mongosh < /scripts/init-shard02.js"
docker compose exec shard03-a sh -c "mongosh < /scripts/init-shard03.js"

# Note: Wait a bit for the config server and shards to elect their primaries before initializing the router
SLEEP 10

# Step 3: Initializing the router
docker compose exec router01 sh -c "mongosh < /scripts/init-router.js"

# Step 4: Verify status of replica set for each shard
docker exec -it shard-01-node-a bash -c "echo 'rs.status()' | mongosh --port 27017" 
docker exec -it shard-02-node-a bash -c "echo 'rs.status()' | mongosh --port 27017" 
docker exec -it shard-03-node-a bash -c "echo 'rs.status()' | mongosh --port 27017" 