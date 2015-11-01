# VERSION 0.0.1
# 中国科学项目-Solr
FROM makuk66/docker-solr

MAINTAINER 蒋凯 "kai.jiang@digitalpublishing.cn"

USER root

ENV confDir articles
ENV coresDir /opt/solr/server/solr/

ADD $confDir $coresDir/$confDir
RUN chown -R $SOLR_USER:$SOLR_USER $coresDir
EXPOSE 8983

WORKDIR /opt/solr
USER $SOLR_USER

CMD ["/bin/bash", "-c", "/opt/solr/bin/solr -f"]
