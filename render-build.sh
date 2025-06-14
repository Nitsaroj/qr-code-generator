#!/usr/bin/env bash
set -o errexit

# Python dependencies
pip install -r requirements.txt

# If Tailwind fails, ignore (for testing)
if [ -f tailwind.config.js ]; then
    npx tailwindcss -i ./static/css/src/input.css -o ./static/css/src/output.css --minify || echo "Tailwind failed"
fi

# Django setup
python manage.py collectstatic --no-input
python manage.py migrate
