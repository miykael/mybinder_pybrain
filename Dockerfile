# Creates the docker container for the workshop in Cambridge
# Run the container with the following command:
#   docker run -p 8888:8888 -it --rm miykael/workshop_pybrain
# And then open the URL http://127.0.0.1:8888/?token=pybrain

FROM miykael/workshop_pybrain:latest

USER neuro

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--NotebookApp.token=pybrain"]
