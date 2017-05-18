#!/bin/bash

/usr/share/elasticsearch/bin/shield/esusers useradd logstash -p $LOGSTASH_PWD -r logstash
/usr/share/elasticsearch/bin/shield/esusers useradd kibana4-server -p $KIBANA_PWD -r kibana4_server
/usr/share/elasticsearch/bin/shield/esusers useradd $KIBANA_USER_NAME -p $KIBANA_USER_PWD -r kibana
/usr/share/elasticsearch/bin/shield/esusers useradd elastic -p $ELASTIC_ADMIN_PWD -r admin

exec /docker-entrypoint.sh "$@"
