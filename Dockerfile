FROM openjdk:8-jdk
RUN apt-get update && apt-get install -y \
    jq \
    maven \
    default-mysql-client && \
    cd /usr/local/bin && \
    curl "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh" -O  && \
    chmod 777 install_kustomize.sh && \
    ./install_kustomize.sh
