FROM python:3.6.0-alpine

COPY dynamodump.py /usr/local/bin/dynamodump.py
COPY dynamodump.sh /usr/local/bin/dynamodump.sh
COPY crontab /var/spool/cron/crontabs/root

RUN pip install boto
RUN chmod +x /usr/local/bin/dynamodump.py
RUN chmod +x /usr/local/bin/dynamodump.sh

CMD crond -l 2 -f
