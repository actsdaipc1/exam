FROM ubuntu
RUN apt update -y
RUN apt install python3 -y
RUN apt install python3-pandas -y
RUN mkdir /app
COPY housing_reader.py /app/
COPY california_housing.csv /app/
CMD [ "bin/python3", "app/housing_reader.py" ]
