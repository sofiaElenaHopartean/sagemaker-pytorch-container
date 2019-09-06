$(aws ecr get-login --no-include-email --region us-east-2 --profile MFA)

$(aws ecr get-login --registry-ids 575636388044 --no-include-email --region us-east-2 --profile MFA)

python3 setup.py bdist_wheel

docker build -f docker/1.1.0/final/Dockerfile.cpu --build-arg py_version=3 -t 575636388044.dkr.ecr.us-east-2.amazonaws.com/pytorch:v16-vae .

docker push 575636388044.dkr.ecr.us-east-2.amazonaws.com/pytorch:v16-vae