# hipchat over ssh
#

FROM stackbrew/ubuntu:13.10

# add the universe repo
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list

# setup hipchat sources
RUN echo "deb http://downloads.hipchat.com/linux/apt stable main" | tee /etc/apt/sources.list.d/atlassian-hipchat.list
ADD hipchat-linux.key /tmp/hipchat.key
RUN apt-key add /tmp/hipchat.key

# update packages list
RUN apt-get update

# Install vnc, xvfb in order to create a 'fake' display
# and what appears necessary to run hipchat over ssh -X
RUN apt-get -y install x11vnc xvfb openssh-server
RUN apt-get -y install libltdl7
RUN apt-get -y install dbus
RUN apt-get -y install hipchat


RUN mkdir /var/run/sshd
RUN echo 'root:hello' | chpasswd
ADD ssh_config /etc/ssh/ssh_config

# VNC Port should run
EXPOSE 22

# Autostart hipchat
CMD /usr/sbin/sshd -D
