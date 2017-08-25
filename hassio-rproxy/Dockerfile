FROM %%BASE_IMAGE%%

ENV LANG C.UTF-8

RUN apk add --no-cache jq git python3 \
        && pip install git+https://github.com/wmcbrine/rproxy.git@master


COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]