FROM python:3.13-slim

# Dépendances système
RUN apt-get update && apt-get install -y \
  build-essential \
  libpq-dev \
  git \
  curl \
  wget \
  unzip \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip

# Répertoire de travail
WORKDIR /workspace
