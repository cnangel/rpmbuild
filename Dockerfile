# Using CentOS 7 as base image to support rpmbuild (packages will be Dist el7)
FROM cnangel/centos7:action

RUN yum install -y autoconf libtool automake gcc-c++
# All remaining logic goes inside main.js , 
# where we have access to both tools of this container and 
# contents of git repo at /github/workspace
ENTRYPOINT ["node", "/lib/main.js"]
