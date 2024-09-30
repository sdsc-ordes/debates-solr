FROM solr:9.7
ADD schema /opt/solr/server/solr/configsets/debates

# Copy load scripts.
COPY ./scripts/load-data.sh ~/load_data.sh
