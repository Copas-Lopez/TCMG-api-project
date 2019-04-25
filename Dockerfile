FROM python:3.7
WORKDIR /usr/src/app
RUN git clone https://github.com/Copas-Lopez/TCMG-api-project.git
WORKDIR /usr/src/app/TCMG-api-project
RUN pip install -r requirements.txt
CMD ["sh", "-c", "git pull origin master && python main.py"]
