FROM python:3.12

WORKDIR /usr/src/app

COPY APTnotes_async_requirements.txt ./
COPY APTnotes_async_download.py ./
COPY utilities.py ./

RUN apt-get install -y libxslt1-dev
RUN pip install -r APTnotes_async_requirements.txt

CMD [ "python", "APTnotes_async_download.py" ]