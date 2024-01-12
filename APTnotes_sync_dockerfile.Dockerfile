FROM python:3.12

WORKDIR /usr/src/app

COPY APTnotes_sync_requirements.txt ./
COPY APTnotes_sync_download.py ./
COPY utilities.py ./

RUN apt-get install -y libxslt1-dev
RUN pip install -r APTnotes_sync_requirements.txt

CMD [ "python", "APTnotes_sync_download.py" ]