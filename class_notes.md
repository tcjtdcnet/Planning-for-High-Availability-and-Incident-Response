## Class Notes and Commands


- Update kubeconfig 
`aws eks --region us-east-2 update-kubeconfig --name <cluster_name>`

- Change kubernetes context to the new AWS cluster
     - `kubectl config use-context <cluster_name>`
       - e.g ` arn:aws:eks:us-east-2:139802095464:cluster/udacity-cluster`
