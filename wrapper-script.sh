mongod --port 27017 --dbpath /data/db/data1 --smallfiles --replSet mongo-repl --bind_ip 0.0.0.0 &
mongod --port 27018 --dbpath /data/db/data2 --smallfiles --replSet mongo-repl --bind_ip 0.0.0.0

status=$?
if [ $status -ne 0 ]; then
  echo "Failed to start my_first_process: $status"
  exit $status
fi