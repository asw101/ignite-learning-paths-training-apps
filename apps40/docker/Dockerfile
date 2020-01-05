ARG IMAGE=mcr.microsoft.com/powershell
FROM $IMAGE

WORKDIR /home/

COPY entrypoint.sh install.sh ./

RUN bash install.sh

CMD ["bash", "entrypoint.sh"]
