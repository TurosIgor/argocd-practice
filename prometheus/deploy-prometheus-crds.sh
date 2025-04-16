argocd app create kube-prometheus-stack-crds \
    --repo https://github.com/prometheus-community/helm-charts.git \
    --path charts/kube-prometheus-stack \
    --dest-server https://kubernetes.default.svc \
    --dest-namespace prometheus \
    --values-literal-file prometheus-crd-values.yml \
    --sync-option CreateNamespace=true \
    --sync-option ServerSideApply=true \
    --sync-policy auto 