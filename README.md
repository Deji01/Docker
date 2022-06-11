# Docker
Docker Basics

Build container from the same directory where Dockerfile is
```bash
docker build .
```

See information about built images
```bash
docker images
```

Build docker image with tag $removeme$
```bash
docker build -t localbuild:removeme .
```

Search for image
```bash
docker images localbuild
```

Push to $localbuild$ repository
```bash
docker push localbuild:removeme
```
Re-Tag
```bash
docker tag localbuild:removeme deji01/removeme
docker push deji01/removeme
```
## Serving a Trained Model Over HTTP
File Structure

└── Boston-Housing-master
    ├── Dockerfile
    └── webapp
        ├── app.py
        └── housing_pred.joblib

build container
```bash
docker build --build-arg VERSION=GBR_01 -t flask-predict .
```
double-check image is available
```bash
docker images flask-predict .
```
run container in the background exposing port 5000
```bash
docker run -p 5000:5000 -d --name flask-predict flask-predict
docker ps
```
verify using curl
```bash
curl 0.0.0.0:5000
```
execute python script to get prediction
```bash
python webapp/predict.py
```
