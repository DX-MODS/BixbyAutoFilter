FROM python:3.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
RUN git clone https://github.com/DX-MODS/BixbyAutoFilter
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /BixbyAutoFilter
WORKDIR /BixbyAutoFilter
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
