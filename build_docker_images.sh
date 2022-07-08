# /bin/sh
cd base
docker build -t paracooba_base .
cd ../leader
docker build -t paracooba:leader .
cd ../worker
docker build -t paracooba:worker .
cd ..

