# Using CentOS 8 as base image to support rpmbuild (packages will be Dist el8)
FROM cnangel/centos8:action

# All remaining logic goes inside main.js , 
# where we have access to both tools of this container and 
# contents of git repo at /github/workspace
ENTRYPOINT ["node", "/lib/main.js"]
