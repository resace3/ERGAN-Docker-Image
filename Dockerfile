FROM pytorch/pytorch

RUN yes | apt-get update && yes | apt-get install vim gettext-base
RUN pip install numpy matplotlib ISR gitpython
RUN apt-get install -y libsm6 libxext6 libxrender-dev libglib2.0-0
RUN pip install opencv-python torchvision

COPY figures ./figures
COPY LR ./LR
COPY net_interp.py ./net_interp.py
COPY RRDBNet_arch.py ./RRDBNet_arch.py
COPY transer_RRDB_models.py ./transer_RRDB_models.py
COPY models ./models
COPY QA.md ./QA.md
COPY results ./results
COPY test.py ./test.py
COPY interpolate.sh ./interpolate.sh

CMD ["python3"]
