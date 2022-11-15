FROM python:3.8.5-alpine
RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt
COPY . .
WORKDIR /app
COPY ./boot.sh /
ENTRYPOINT ["sh", "/boot.sh"]
EXPOSE 8000