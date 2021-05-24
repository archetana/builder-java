FROM adoptopenjdk/openjdk11
RUN curl -fsSL https://deb.nodesource.com/setup_12.x  | bash - && \
    curl -fsSL https://get.docker.com -o get-docker.sh&& \
    apt-get update && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    jq \
    maven \
    wget \
    unzip \
    git-all \
    vim \
    default-mysql-client \
    nodejs && \
    sh get-docker.sh && \
    npm install --global yarn && \
    yarn global add semver && \
    curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | tee /etc/apt/sources.list.d/kubernetes.list && \
    curl https://baltocdn.com/helm/signing.asc | apt-key add - && \
    echo "deb https://baltocdn.com/helm/stable/debian/ all main" | tee /etc/apt/sources.list.d/helm-stable-debian.list && \
    apt-get update &&  apt-get install -y kubectl helm
