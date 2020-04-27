FROM centos:8

MAINTAINER Siamak Sadeghianfar <ssadeghi@redhat.com>

USER root

RUN curl -kL -o oc.tar.gz https://mirror.openshift.com/pub/openshift-v4/clients/oc/latest/linux/oc.tar.gz && \
    tar xvfz oc.tar.gz && \
    mv oc /usr/local/bin/ && \
    rm oc.tar.gz 

RUN curl -kL -o kustomize.tar.gz https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv3.5.4/kustomize_v3.5.4_linux_amd64.tar.gz && \
    tar xvfz kustomize.tar.gz && \
    mv kustomize /usr/local/bin/ && \
    rm kustomize.tar.gz 

RUN yum -y install jq

USER 1001