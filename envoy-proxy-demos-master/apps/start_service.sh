#!/bin/sh
python3 /code/service.py &
envoy -c /circuit-breaker/service-envoy.yaml --service-cluster service${SERVICE_NAME}
