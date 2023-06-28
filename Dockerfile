FROM ubuntu
RUN apt update && apt-get install -y apt-transport-https ca-certificates curl unzip && \
  apt-get -y autoremove && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN curl -LO https://dl.k8s.io/release/v1.27.3/bin/linux/amd64/kubectl && \
  install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl


RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && ./aws/install -i /usr/local/aws-cli -b /usr/local/bin && rm awscliv2.zip && rm -r aws
