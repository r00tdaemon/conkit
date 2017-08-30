#! /bin/bash

cd "$(dirname "$0")"

conky -d -c ./conkyrc &
conky -d -c ./horical_conky &
conky -d -c ./ip_conkyrc &
conky -d -c ./net_conkyrc &
conky -d -c ./info_conkyrc &
conky -d -c ./top_conkyrc
