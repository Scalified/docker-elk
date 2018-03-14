# ELK  Docker

## Description

This repository is contains Docker Stack composition for [**ELK Stack**](https://www.elastic.co/elk-stack)

### ELK

ELK consists of three independent products:

• **Elasticsearch** is a distributed, JSON-based search and analytics engine, that allows us to  store the data and search

• **Logstash** is a server-side data processing pipeline that gather data, transforms it, and then sends it to Elasticsearch

• **Kibana** used to visualize Elasticsearch data and navigate the Elastic Stack

![ELK Stack](images/elk_stack.png)

## Ports

| Port | Description              |
|------|--------------------------|
| 4560 | Syslog Logstash Listener |
| 5044 | Beats Listener           |
| 5601 | Kibana Web               |
| 9200 | Elasticsearch REST       |
| 9300 | Elasticsearch Internal   |

### How-To

#### JBoss Logger Configuration Example

```xml
<custom-handler name="SYSLOG" class="org.jboss.logmanager.handlers.SyslogHandler" module="org.jboss.logmanager">
    <encoding value="UTF-8"/>
    <formatter>
        <pattern-formatter pattern="%-5p %s%E%n"/>
    </formatter>
    <properties>
        <property name="appName" value="apsbau"/>
        <property name="facility" value="SYSLOGD"/>
        <property name="serverHostname" value="swarm.swupp.com"/>
        <property name="port" value="4560"/>
        <property name="protocol" value="TCP"/>
        <property name="hostname" value="DEV"/>
        <property name="maxLength" value="32768"/>
        <property name="truncate" value="false"/>
        <property name="syslogType" value="RFC5424"/>
    </properties>
</custom-handler>
```
[Syslog Configuration Options](https://access.redhat.com/solutions/1276813)

## Scalified Links

* [Scalified](http://www.scalified.com)
* [Scalified Official Facebook Page](https://www.facebook.com/scalified)
* <a href="mailto:info@scalified.com?subject=[ELK Stack Docker Image]: Proposals And Suggestions">Scalified Support</a>

