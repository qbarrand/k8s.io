#!/bin/bash

# Load the PeeringDB metadata into the metadata table
bq load --autodetect "${GCP_BIGQUERY_DATASET}_${PIPELINE_DATE}.metadata" /tmp/peeringdb_metadata.csv asn:integer,name:string,website:string,email:string > "${BQ_OUTPUT:-/dev/null}" 2>&1
