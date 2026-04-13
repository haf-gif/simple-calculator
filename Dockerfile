# 1. Base image: Hum Python use kar rahe hain
FROM python:3.9-slim

# 2. Working directory: Docker container ke andar ka folder
WORKDIR /app

# 3. Copy code: Aapka calc.py container ke andar copy hoga
COPY calc.py .

# 4. Run command: Jab container start ho to kya chale
CMD ["python", "calc.py"]