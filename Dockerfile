FROM python:3.9

RUN pip install pipenv

WORKDIR /app

COPY Pipfile.lock /app/

RUN pipenv install

COPY . .

ENV FLASK_APP=msgsvc.py

CMD ["pipenv", "run", "flask", "run", "-h", "0.0.0.0"]
