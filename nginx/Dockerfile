# This should be updated to a specific digest - this guarantees the same image version will always be used.
# format = image:tag@digest
FROM nginx:<tag>@<digest>

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d