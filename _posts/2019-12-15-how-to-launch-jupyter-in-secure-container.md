---
layout: post
title: "How to launch Jupyter in a secure container"
date: 2019-12-15
---

The following command launches a docker container that runs a Jupyter notebook with a data science stack.

The container is launched on port 8888 in a secure manner. HTTPS encryption is enabled by specifying a key and cert. Password authentication is also enabled. You can change the password by running `jupyter notebook password` to generate a sha1 password hash.

```bash
docker run -d -p 8888:8888 \
    -v /.certs:/etc/ssl/notebook \
    jupyter/scipy-notebook start-notebook.sh \
    --NotebookApp.keyfile=/etc/ssl/notebook/notebook.key \
    --NotebookApp.certfile=/etc/ssl/notebook/notebook.crt \
    --NotebookApp.password='sha1:92d984ec831d:5b7265f42d5085e35ebf7cb6ecec4b76ba0aaa27'
```