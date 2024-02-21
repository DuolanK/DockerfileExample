FROM python:3.9

RUN mkdir /fastapi_app

WORKDIR /fastapi_app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

RUN chmod a+x docker/*.sh

#RUN useradd -rms /bin/bash ut && chmod 777 /opt /run

#USER ut

# RUN alembic upgrade head
