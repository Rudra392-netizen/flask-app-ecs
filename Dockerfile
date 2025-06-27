#First create a base image in which all the required libraries and dependencies are installed
FROM python:3.7
#create a working directory where the source code will be stored
WORKDIR /app
#Now copy all the files from the HOST to the container
COPY app.py /app/app.py
COPY requirements.txt /app/requirements.txt
COPY run.py /app/run.py
#Now install all the dependencies
RUN pip install -r requirements.txt
#Expose the port number in which the application will run
EXPOSE 8000
#Now run the application
CMD ["python","run.py"]

