function kubesh() {
    labels="app=kubeshell,owner=`whoami`"
    kubectl delete --ignore-not-found=true pod -l $labels 2>&1 > /dev/null
    kubectl run -it jx-kubeshell -l $labels --image quay.io/joerx/kubesh:latest --restart=Never --rm
}
