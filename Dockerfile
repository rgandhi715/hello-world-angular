FROM node:14.2.0
LABEL project="angular-pro"
LABEL owner="vishant"
RUN npm install -g @angular/cli
RUN mkdir /code
ADD . /code
WORKDIR /code
RUN npm install
EXPOSE 4200
CMD ["ng","serve","--host","0.0.0.0"]
