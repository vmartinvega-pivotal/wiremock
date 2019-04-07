FROM centos

ENV HOME=/opt/wiremock \
    TERM=xterm

RUN yum install -y centos-release-openshift-origin epel-release java-1.8.0-openjdk vim && \
    yum install -y python2-pip origin-clients && \
    pip install -U pip && \
    pip install -U setuptools && \
    pip install httpie && \
    yum clean all && \
    mkdir -p /opt/wiremock

COPY init.sh .kube /opt/wiremock/

COPY wiremock-standalone-2.22.0.jar /opt/wiremock/wiremock.jar

RUN mkdir -p /var/lib/wiremock && \
    chown -R 10001:0 /opt/wiremock /var/lib/wiremock && \
    chmod -R 777 /opt/wiremock /var/lib/wiremock


USER 10001
EXPOSE 8080 8443
ENTRYPOINT java -jar /opt/wiremock/wiremock.jar --https-port 8443 --bind-address 0.0.0.0 --root-dir /var/lib/wiremock --verbose
