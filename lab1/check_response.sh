#!/bin/bash
URL="https://www.google.com/"
LOG_FILE="response_log.txt"
EMAIL="Vadym.Hnatenko@infiz.khpi.edu.ua"

echo "Running the script..."

response_code=$(curl -o /dev/null -s -w "%{http_code}" $URL)

echo "Response code: $response_code"
if [[ $response_code != 2* ]] && [[ $response_code != 3* ]]; then
	echo "$(date) - Response code: $response_code" >> $LOG_FILE
	echo "Warning! Response code not 2xx or 3xx!"
fi

echo "Script execution complete."