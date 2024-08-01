FROM python:3.9-slim
WORKDIR /app
COPY ./requirments.txt /app/requirments.txt
RUN pip install --upgrade pip
RUN pip install -r requirments.txt

COPY . .
ENV FLASK_APP=main.py
CMD [ "python", "-m" , "flask", "run", "--host=0.0.0.0"]