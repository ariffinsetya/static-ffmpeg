docker build -t static-ffmpeg -f ./Dockerfile-local
docker run -d -t static-ffmpeg
container_id=$(docker container ls  | grep 'static-ffmpeg' | awk '{print $1}')
docker cp $container_id:/usr/local/bin/ffmpeg .
docker cp $container_id:/usr/local/bin/ffprobe .
docker stop $container_id