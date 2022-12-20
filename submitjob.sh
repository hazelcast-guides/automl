#!/bin/bash
docker compose run hazelcast-shell hz-cli submit \
    -c=com.hzsamples.automl.PredictionPipeline \
    -t=hazelcast:5701  \
    -n=fraud-prediction \
    /opt/project/scoring-pipeline/target/scoring-pipeline-1.0-SNAPSHOT.jar  \
    /opt/project/scoring-pipeline/gcp-credentials.json \
    jet-geo-1572012738362 \
    us-central1 \
    1485031190799843328
