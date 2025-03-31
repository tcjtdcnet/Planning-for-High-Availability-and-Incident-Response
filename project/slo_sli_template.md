# API Service

| Category     | SLI | SLO                                                                                                         |
|--------------|-----|-------------------------------------------------------------------------------------------------------------|
| Availability | (1) | 99%                                                                                                         |
| Latency      | (2) | 90% of requests below 100ms                                                                                 |
| Error Budget | (3) | Error budget is defined at 20%. This means that 20% of the requests can fail and still be within the budget |
| Throughput   | (4) | 5 RPS indicates the application is functioning                                                              |

SLI
===
1. web request code == 2xx / total number of requests.

2. web requsts replies faster than 100ms / total number of requests.

3. the number of error requests / total number of requests in budget.

4. the number of web requests in a second.
