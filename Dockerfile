FROM python:alpine3.21

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

# CMD ["sleep", "infinity"]
CMD ["python", "app.py"]
# CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
