#!/usr/bin/env python3
# coding: utf-8

from elasticsearch import Elasticsearch
import time

time.sleep(15)
status = 'False'
while (status == 'False'):
    es = Elasticsearch(hosts=['dockerhost:9200/'])
    status=str(es.ping())
    time.sleep(5)

print('status_def = '+status)