FROM consul:1.9.4

COPY config.json /etc/consul.d/bootstrap/
COPY agent.hcl /etc/consul.d/bootstrap/

RUN set -eux;\
    cp /etc/consul.d/bootstrap/config.json /etc/consul.d/server ;\
    mkdir -p /var/consul/data


CMD ["agent","-config-dir","/etc/consul.d/bootstrap","-ui","-client","0.0.0.0"]
