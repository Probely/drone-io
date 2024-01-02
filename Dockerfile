FROM python:3.12-slim-bookworm

RUN pip install requests
COPY scan.* /
RUN chmod +x /scan.*

ENTRYPOINT ["/scan.sh"]
