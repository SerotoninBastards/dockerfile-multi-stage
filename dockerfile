FROM python:3.10-slim AS build

WORKDIR /python-app

COPY ./code.py /python-app
COPY ./data.txt /python-app

FROM python:3.8-slim-buster
COPY --from=build /python-app/code.py /home
COPY --from=build /python-app/data.txt /home
RUN ls /home
RUN python3 /home/code.py


