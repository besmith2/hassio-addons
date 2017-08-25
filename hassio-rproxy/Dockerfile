FROM %%BASE_IMAGE%%

ENV LANG C.UTF-8

RUN apk add --no-cache jq git python2 \
        && git clone https://github.com/wmcbrine/rproxy


COPY run.sh /
RUN chmod a+x /run.sh
#RUN chmod a+x /rproxy/rproxy.py
#RUN chmod a+x /rproxy/rproxy.py
CMD [ "/run.sh" ]