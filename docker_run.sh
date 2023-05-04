docker run -it \
    --gpus all  \
    -u 0 \
    -v /home/fai/Paul/i3d/video_features/:/home/ubuntu/video_features/:z \
    -v /home/fai/Paul/paul_dataset/:/home/ubuntu/video_features/dataset/:z \
    -w /home/ubuntu/video_features/ \
    --shm-size 8G \
    paul/video-features:1.0 \
    bash