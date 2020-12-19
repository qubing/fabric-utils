FROM busybox:1.28

LABEL maintainer="qubing<23227732@qq.com>"
LABEL busybox=1.28
LABEL fabric-version=2.3.0
LABEL fabric-ca-version=1.4.9

##################
## FABRIC-TOOLS ##
##################
# add fabric-binaries
ADD fabric/bin/* /usr/local/bin/
# add fabric config files
ADD fabric/config/* /etc/hyperledger/fabric/
# set fabric environment variables
ENV FABRIC_CFG_PATH=/etc/hyperledger/fabric/

#####################
## FABRIC-CA-TOOLS ##
#####################
# add fabric-ca-binaries
ADD fabric-ca/bin/* /usr/local/bin/
# add fabric-ca config files
ADD fabric-ca/config/* /etc/hyperledger/fabric-ca-server/
# set fabric-ca environment variables
ENV FABRIC_CA_HOME=/etc/hyperledger/fabric-ca-server

