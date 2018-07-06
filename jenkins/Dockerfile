FROM jenkins:2.60.3
USER root

RUN apt-get update \
	&& apt-get install -y apt-transport-https \
	&& echo "deb https://download.docker.com/linux/debian stretch stable" | tee /etc/apt/sources.list.d/docker.list \
	&& wget --quiet --output-document - https://download.docker.com/linux/debian/gpg  | apt-key add - \
	&& apt-get update \
	&& apt-get install -y docker-ce

RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

USER jenkins
