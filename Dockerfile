FROM node:alpine

COPY . /app
WORKDIR /app

RUN chmod +x run.sh && \
    ./run.sh

CMD ["serve", "-s", "build"]
