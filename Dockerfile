FROM amazonlinux:latest

MAINTAINER suthio

ADD td-agent.repo /etc/yum.repos.d/td-agent.repo
ADD RPM-GPG-KEY-td-agent /etc/pki/rpm-gpg/RPM-GPG-KEY-td-agent

RUN yum -y install td-agent && yum clean all

# install td-agent plugins
RUN /usr/sbin/td-agent-gem install fluent-plugin-kinesis fluent-plugin-rewrite-tag-filter --no-ri --no-rdoc -V

EXPOSE 24224 5140

CMD ['td-agent']
