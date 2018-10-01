FROM docker.elastic.co/elasticsearch/elasticsearch:6.2.4

RUN wget http://dl.embulk.org/embulk-latest.jar -O /usr/local/bin/embulk
RUN chmod +x /usr/local/bin/embulk
RUN embulk gem install embulk-input-mysql embulk-output-elasticsearch

RUN bin/elasticsearch-plugin install analysis-kuromoji
RUN bin/elasticsearch-plugin install repository-s3

#RUN mkdir -p /usr/share/elasticsearch/data/docker-cluster
#RUN chmod 755 /usr/share/elasticsearch/data/docker-cluster
#RUN chown 1000:1000 /usr/share/elasticsearch


RUN mv /usr/share/elasticsearch/config/elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml.back
ADD ./config/elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml
