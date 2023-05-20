FROM ubuntu

RUN apt-get update && apt-get install -y curl watch

COPY check_response.sh /check_response.sh

RUN chmod +x /check_response.sh

CMD ["watch", "-n", "30", "./check_response.sh"]
