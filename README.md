# Software Creativity (SC)

### install python bits with:
    pip install -r requirements.txt

### build and run the docker container with:
    docker build -t flask_repo:latest .
    docker run -d -p 5000:5000 --name flask flask_repo
