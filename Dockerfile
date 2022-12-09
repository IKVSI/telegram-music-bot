FROM python:3.10-slim
COPY requirements.txt /requirements.txt
RUN ["pip", "install", "--upgrade", "pip"]
RUN ["pip", "install", "-r", "requirements.txt"]
COPY src /src
CMD ["python3", "/src/main.py"]