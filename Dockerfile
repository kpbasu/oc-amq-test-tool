  
FROM centos:7

RUN     yum install -y epel-release &&  \
        yum install -y java xmvn mlocate nmap-ncat net-tools wget git tar zip && \
        yum clean all && \
        wget https://mirror.openshift.com/pub/openshift-v4/clients/oc/latest/linux/oc.tar.gz && tar xvfz oc.tar.gz -C /usr/local/bin/ && \
        wget https://github.com/fmtn/a/releases/download/v1.4.8/a-1.4.8-dist.tar.gz && tar xvfz a-1.4.8-dist.tar.gz -C /usr/local/bin/ && \
        chmod +x /usr/local/bin/a
COPY  . /
USER 1001570000
