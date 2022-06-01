FROM python:3.9-alpine
WORKDIR /apps/pylotfish/
COPY src/pylotfish/. .
COPY requirements/development.txt .
RUN ["pip", "install", "-r", "development.txt"]
CMD ["python", "pylotfish.py"]
