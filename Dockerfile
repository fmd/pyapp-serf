from fmdud/serf-base
maintainer Fareed Dudhia <fareeddudhia@gmail.com>

run apt-get update -q
run apt-get install -qy python-pip
run pip install flask 

add ./app.py /app.py

run touch /etc/container_environment/SERF_ROLE
run echo -n "web" > /etc/container_environment/SERF_ROLE

cmd ["/sbin/my_init python /app.py"]

expose 7946 7373 8000
