# Update image to allow to run as Non-Root User on OpenShift
FROM fabric8/hystrix-dashboard:1.0.17

RUN chgrp -R 0 /opt/jetty/webapps
RUN chmod -R g+rw /opt/jetty/webapps
RUN find /opt/jetty/webapps -type d -exec chmod g+x {} +
