# ---- Base image ----
FROM python:3.11

# Avoid buffering & create a workspace
ENV PYTHONUNBUFFERED=1 PYTHONDONTWRITEBYTECODE=1
WORKDIR /workspaces/app

# ---- System updates & pip ----
RUN apt-get update -y && apt-get install -y --no-install-recommends \
    git curl && \
    python3 -m ensurepip && \
    pip install --upgrade pip && \
    rm -rf /var/lib/apt/lists/*

# ---- Copy and install project deps ----
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt || true

# ---- Copy rest of repo ----
COPY . .

EXPOSE 5000
CMD ["python", "src/deploy.py"]
