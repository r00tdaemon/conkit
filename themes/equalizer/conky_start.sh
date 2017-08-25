#! /bin/bash
cd "$(dirname "$0")"
conky -c ./conkyrc &
conky -c ./horical_conky &
conky -c ./ip_conkyrc &
conky -c ./net_conkyrc &
conky -c ./info_conkyrc &
conky -c ./top_conkyrc
