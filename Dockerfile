# Gunakan Python sebagai base image
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy semua file ke dalam container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port yang digunakan oleh Flask
EXPOSE 8080

# Jalankan aplikasi Flask
CMD ["python", "app.py"]
