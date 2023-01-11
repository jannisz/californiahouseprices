FROM continuumio/miniconda3
COPY . /app
WORKDIR /app
#RUN conda create -n dev_2 python=3.10.8 pandas numpy matplotlib pickle seaborn sklearn
COPY environment.yml .
RUN conda env create -f environment.yml

# Make RUN commands use the new environment:
SHELL ["conda", "run", "-n", "dev_2", "/bin/bash", "-c"]

RUN conda init bash
RUN conda list
