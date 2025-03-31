## Availability SLI
### The percentage of successful requests over the last 5m
rate(flask_http_requests_total{status=~"200"}[5m])

## Latency SLI
### 90% of requests finish in these times
histogram_quantile(0.90, sum(rate(flask_http_request_duration_seconds_bucket[5m])) by (le))

## Throughput
### Successful requests per second
sum(rate(flask_http_request_total[1m])/60)

## Error Budget - Remaining Error Budget
### The error budget is 20%
(1 - (sum(rate(flask_http_request_total{status="200"}[5m])) / sum(rate(flask_http_request_total[5m])))) * 100
