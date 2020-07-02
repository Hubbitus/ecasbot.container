FROM fedora:32

LABEL MAINTAINER='Pavel Alexeev <Pahan@Hubbitus.info>'

RUN dnf install -y 'dnf-command(copr)' \
	&& dnf copr enable -y xvitaly/ecrepo \
	&& dnf clean all

RUN dnf install -y ecasbot \
	&& dnf clean all

ENTRYPOINT /usr/bin/ecasbot
