#!/usr/bin/env bash

# Install Node.js (v18 LTS, you can adjust)
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
apt-get install -y nodejs

# Install Tailwind CSS CLI globally
npm install -g tailwindcss

# Run Tailwind CLI build
tailwindcss -i ./static/css/src/input.css -o ./static/css/src/output.css --minify

# Django setup
pip install -r requirements.txt
python manage.py collectstatic --no-input
python manage.py migratechmod +x render-build.sh