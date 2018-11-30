FROM osixia/openldap:1.2.2
MAINTAINER Your Name <your@name.com>

ADD bootstrap /container/service/slapd/assets/config/bootstrap
ADD service /container/service

RUN dpkg -i /container/service/OktaLDAPAgent/oktaagent.deb

RUN mv /opt/Okta/OktaLDAPAgent/conf/logback.xml /opt/Okta/OktaLDAPAgent/logback-default.xml

VOLUME ["/opt/Okta/OktaLDAPAgent/conf"]
