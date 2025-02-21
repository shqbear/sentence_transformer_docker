FROM python:3.10-slim

WORKDIR /app

RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

RUN pip install --no-cache-dir transformers \
    && pip install --no-cache-dir torch --index-url https://pypi.tuna.tsinghua.edu.cn/simple \
    && pip install --no-cache-dir sentence-transformers \
    && pip install --no-cache-dir Flask
    
COPY main.py /app/

RUN python -c "from sentence_transformers import SentenceTransformer; model = SentenceTransformer('sdadas/mmlw-retrieval-roberta-large')"

CMD ["python", "/app/main.py"]
