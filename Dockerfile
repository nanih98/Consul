FROM consul:1.9.4

COPY config.json /etc/consul.d/bootstrap/
COPY agent.hcl /etc/consul.d/agent.hcl

RUN set -eux;\
    cp /etc/consul.d/bootstrap/config.json /etc/consul.d/server


CMD ["agent","-config-dir","/etc/consul.d/bootstrap","-ui","-client","0.0.0.0"]