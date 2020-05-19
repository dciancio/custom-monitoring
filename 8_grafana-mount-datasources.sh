oc set volume deployment grafana \
  --add \
  --name=grafana-datasources-volume \
  --type=configmap \
  --configmap-name=grafana-datasources \
  --mount-path=/usr/share/grafana/datasources \
  --namespace=grafana
