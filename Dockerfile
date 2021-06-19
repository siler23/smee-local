FROM node:alpine
RUN 	addgroup -g 1001 smee \
    &&	adduser -u 1001 -G smee -s /bin/sh -D smee
RUN npm install -g smee-client
USER smee
CMD ["sh", "-c", "smee -u ${SMEE_ENDPOINT}"]
EXPOSE 3000 
