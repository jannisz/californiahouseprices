FROM continuumio/anaconda3
COPY . /app
WORKDIR /app
RUN conda create -n dev_2 python=3.10.8 -r requirements.txt
