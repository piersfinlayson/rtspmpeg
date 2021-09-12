# Create container

To create a container image called rtspmpeg:

```
docker build -t rtspmpeg .
```

# Set up

Create a cgi-bin folder, put suitably edited versions of samplestream and sampleframe in there and link it to the docker volume /var/www/cgi-bin when running the container.

# Run container

```
docker run --restart always -d -p 8080:80 -v my_cgi_bin_folder:/var/www/cgi-bin --name rtspmpeg-server rtspmpeg
```

# Viewing

You can view the pages via http://server:port/cgi-bin/samplestream and http://server:port/cgi-bin/sampleframe

# Acknowledgements

Based on https://stevethemoose.blogspot.com/2021/07/converting-rtsp-to-mjpeg-stream-on.html
