FROM centos:7

RUN     yum install -y epel-release &&  \
        yum groupinstall -y "Minimal Install" && \
        yum install -y java xmvn mlocate nmap-ncat net-tools wget git tar zip && \
        yum clean all && \
        useradd kpbasu && \
        echo -e "IlovemyIndia@2020\nIlovemyIndia@2020" | passwd kpbasu && \
        usermod -aG wheel kpbasu && \
        wget https://mirror.openshift.com/pub/openshift-v4/clients/oc/latest/linux/oc.tar.gz && tar xvfz oc.tar.gz -C /usr/local/bin/ && \
        wget https://github.com/fmtn/a/releases/download/v1.4.8/a-1.4.8-dist.tar.gz && tar xvfz a-1.4.8-dist.tar.gz -C /usr/local/bin/
COPY  . /
USER kpbasu
