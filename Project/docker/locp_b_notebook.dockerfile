FROM continuumio/miniconda3:4.10.3p1

ARG shared_workspace=/opt/workspace
ENV SHARED_WORKSPACE=${shared_workspace}

RUN apt-get update -y && \
    pip3 install notebook matplotlib spektral==1.1.0 tf_agents==0.12.1 wandb tensorflow==2.8.0 numpy matplotlib.pyplot random pprint pyvirtualdisplay PIL.Image IPython imageio base64 __future__

EXPOSE 8888

CMD jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser --allow-root --NotebookApp.iopub_data_rate_limit=1.0e10 --NotebookApp.token=
