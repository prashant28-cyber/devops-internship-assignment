FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install uv
RUN pip install uv

# Copy project files
COPY . .

# Sync project dependencies using uv
RUN uv sync

# Expose the FastAPI port
EXPOSE 8000

# Start the FastAPI server
CMD ["uv", "run", "fastapi", "run", "server.py"]
