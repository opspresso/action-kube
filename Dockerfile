FROM opspresso/builder:kube

LABEL "com.github.actions.name"="Kube Tools"
LABEL "com.github.actions.description"="Kubernetes Tools for GitHub Action"
LABEL "com.github.actions.icon"="box"
LABEL "com.github.actions.color"="blue"

LABEL version=v0.2.1
LABEL repository="https://github.com/opspresso/action-kube"
LABEL maintainer="Jungyoul Yu <me@nalbam.com>"
LABEL homepage="https://opspresso.com/"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
