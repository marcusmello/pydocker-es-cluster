FROM python:3.7
COPY worker/requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY worker/ /
CMD (python -u main.py)