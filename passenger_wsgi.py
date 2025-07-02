import sys
import os

# Tambahkan path ke direktori project (otomatis direktori file ini)
sys.path.insert(0, os.path.dirname(__file__))

# Import objek Flask bernama 'app' dari app.py → expose ke Passenger
from app import app as application
