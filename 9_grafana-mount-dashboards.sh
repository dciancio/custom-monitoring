oc set volume deployment grafana \
  --add \
  --name=grafana-dashboards \
  --type=configmap \
  --configmap-name=grafana-dashboards \
  --mount-path=/usr/share/grafana/dashboards \
  --namespace=grafana
oc set volume deployment grafana \
  --add \
  --name=grafana-dashboard-k8s-cluster-rsrc-use \
  --type=configmap \
  --configmap-name=grafana-dashboard-k8s-cluster-rsrc-use \
  --mount-path=/grafana-dashboard-definitions/0/k8s-cluster-rsrc-use \
  --namespace=grafana
oc set volume deployment grafana \
  --add \
  --name=grafana-dashboard-k8s-node-rsrc-use \
  --type=configmap \
  --configmap-name=grafana-dashboard-k8s-node-rsrc-use \
  --mount-path=/grafana-dashboard-definitions/0/k8s-node-rsrc-use \
  --namespace=grafana
oc set volume deployment grafana \
  --add \
  --name=grafana-dashboard-k8s-resources-cluster \
  --type=configmap \
  --configmap-name=grafana-dashboard-k8s-resources-cluster \
  --mount-path=/grafana-dashboard-definitions/0/k8s-resources-cluster \
  --namespace=grafana
oc set volume deployment grafana \
  --add \
  --name=grafana-dashboard-k8s-resources-namespace \
  --type=configmap \
  --configmap-name=grafana-dashboard-k8s-resources-namespace \
  --mount-path=/grafana-dashboard-definitions/0/k8s-resources-namespace \
  --namespace=grafana
oc set volume deployment grafana \
  --add \
  --name=grafana-dashboard-k8s-resources-pod \
  --type=configmap \
  --configmap-name=grafana-dashboard-k8s-resources-pod \
  --mount-path=/grafana-dashboard-definitions/0/k8s-resources-pod \
  --namespace=grafana
