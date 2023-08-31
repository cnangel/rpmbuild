# Using CentOS 9 as base image to support rpmbuild (packages will be Dist el9)
FROM cnangel/centos9:action

# All remaining logic goes inside main.js , 
# where we have access to both tools of this container and 
# contents of git repo at /github/workspace
ENTRYPOINT ["node", "/lib/main.js"]
