#FROM python:3.10.2-alpine

#COPY requirements.txt /
#RUN apk add --no-cache curl && pip install --no-cache-dir -r requirements.txt

#RUN addgroup --system newtrackon && adduser -S -H -G newtrackon newtrackon
#USER newtrackon

#COPY --chown=newtrackon:newtrackon . /app/newTrackon
#VOLUME /app/newTrackon/data
#WORKDIR /app/newTrackon

FROM ghcr.io/corralpeltzer/newtrackon:latest@sha256:65a6c2481d3f637f01fc97c2950291364f2fe54c12522e92d9b8a95c835401d4

COPY . .

EXPOSE 8080

CMD [ "python", "run.py" ]
