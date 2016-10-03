# Update image to allow to run as Non-Root User on OpenShift
FROM fabric8/hystrix-dashboard:1.0.17

RUN chgrp -R 0 /opt/jetty
RUN chmod -R g+rw /opt/jetty
RUN find /opt/jetty -type d -exec chmod g+x {} +
