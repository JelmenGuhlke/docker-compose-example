docker-compose up -d  postgres_main

echo "Starting postgres_main node..."
sleep 20  # Waits for main note start complete

echo "Prepare replica config..."
docker exec -it postgres_main sh /etc/postgresql/init-script/init.sh
echo "Restart main node"
docker-compose restart postgres_main
sleep 5

echo "Starting replica node..."
docker-compose up -d  postgres_replica
sleep 20  # Waits for note start complete

echo "Done"

docker exec -it postgres_main sh /etc/postgresql/init-script/validate.sh
