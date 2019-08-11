FROM python:3

WORKDIR /home/guest

COPY requirements.txt ./
COPY error.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN apt update
RUN apt install vim -y
RUN useradd guest
RUN chown -R guest:guest /home/guest
USER guest