FROM python

ENV PYTHONUNBUFFERED 1
RUN mkdir -p /opt/services/flaskapp/src
COPY requirements.txt /opt/services/flaskapp/src/
WORKDIR /opt/services/flaskapp/src
RUN pip install -U pytest
RUN pip install -r requirements.txt
COPY . /opt/services/flaskapp/src
EXPOSE 5000

CMD ["python", "flask-docker.py"]