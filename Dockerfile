FROM adoptopenjdk/openjdk11
RUN apt-get update && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    jq \
    maven \
    wget \
    unzip \
    git-all \
    default-mysql-client \
    nodejs \
    npm && \
    npm install --global yarn && \
    curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | tee /etc/apt/sources.list.d/kubernetes.list && \
    curl https://baltocdn.com/helm/signing.asc | apt-key add - && \
    echo "deb https://baltocdn.com/helm/stable/debian/ all main" | tee /etc/apt/sources.list.d/helm-stable-debian.list && \
    apt-get update &&  apt-get install -y kubectl helm
