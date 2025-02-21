FROM python:3.10-slim

WORKDIR /app

RUN pip install --proxy http://127.0.0.1:8080 transformers \
    && pip install --proxy http://127.0.0.1:8080 torch --index-url https://download.pytorch.org/whl/cpu \
    && pip install --proxy http://127.0.0.1:8080 sentence-transformers \
    && pip install --proxy http://127.0.0.1:8080 Flask

COPY main.py /app/

RUN python -c "from sentence_transformers import SentenceTransformer; model = SentenceTransformer('sdadas/mmlw-retrieval-roberta-large')"

CMD ["python", "/app/main.py"]
