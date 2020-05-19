GRAFANA_TOKEN=$(oc sa get-token grafana)
cat >8_grafana-datasources.yaml <<EOF
apiVersion: v1
data:
  datasources.yaml: |-
    apiVersion: 1
    datasources:
      - name: "OCP Prometheus"
        type: prometheus
        access: proxy
        url: http://prometheus-operated.prometheus-operator.svc:9090
        basicAuth: false
        withCredentials: false
        isDefault: true
        jsonData:
            tlsSkipVerify: true
            "httpHeaderName1": "Authorization"
        secureJsonData:
            "httpHeaderValue1": "Bearer ${GRAFANA_TOKEN}"
kind: ConfigMap
metadata:
  name: grafana-datasources
  namespace: grafana
EOF
oc apply -f 8_grafana-datasources.yaml
