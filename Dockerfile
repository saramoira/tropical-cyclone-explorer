FROM continuumio/miniconda3

COPY requirements.txt /tmp/
COPY ./app /app
WORKDIR "/app"

RUN conda install -c conda-forge --file /tmp/requirements.txt
RUN pip install goes2go==0.0.4

EXPOSE 8050

ENTRYPOINT [ "python3" ]
CMD [ "application.py" ]
