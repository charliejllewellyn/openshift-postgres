# vim:set ft=dockerfile:
FROM postgres

RUN chgrp -R 0 /var/run/postgresql \
  && chmod -R g+rwX /var/run/postgresql

RUN apt-get -y install nss_wrapper gettext
USER $(id -u)
