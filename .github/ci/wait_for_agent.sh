trap 'kill $(jobs -p)' EXIT
attempt_counter=0
max_attempts=100
mkdir -p build/reports/agent
docker-compose -f docker-compose.yml logs -f | tee build/reports/agent/log.txt