FROM bitnami/openresty
WORKDIR /conf
ENV PATH="${PATH}:/opt/bitnami/openresty/nginx/sbin"
USER root
RUN opm install zmartzone/lua-resty-openidc
COPY /conf /conf
CMD ["nginx", "-c", "/conf/authed.conf", "-g", "daemon off;"]
