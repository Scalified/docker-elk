FROM sebp/elk

RUN rm -f /etc/logstash/conf.d/*.conf

COPY logstash.conf /etc/logstash/conf.d/

EXPOSE 4560 9200 5601
