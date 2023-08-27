FROM ubuntu
RUN apt update && apt install npm -y
ENV SRC_DIR /opt/
WORKDIR $SRC_DIR
COPY * $SRC_DIR
EXPOSE 5000
RUN npm install
CMD ["npm", "start"]
