FROM ubuntu:latest

RUN apt-get clean && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y wget gawk

COPY check_response.sh /check_response.sh

RUN chmod +x /check_response.sh

CMD ["watch", "-n", "30", "./check_response.sh"]