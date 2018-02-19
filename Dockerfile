FROM ubuntu

RUN apt-get update && apt-get install -y samba \
    && mkdir -p /volume \
    && chown -R nobody.nogroup /volume \
    && chmod -R 777 /volume 

ADD smb.conf /etc/samba

ENTRYPOINT ["/bin/bash", "-c", "service smbd start && tail -f /dev/null"]
