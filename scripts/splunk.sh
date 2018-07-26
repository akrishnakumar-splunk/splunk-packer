#!/bin/bash -eux

wget –-quiet -O splunk-7.0.3-fa31da744b51-linux-2.6-amd64.deb 'https://www.splunk.com/page/download_track?file=7.0.3/linux/splunk-7.0.3-fa31da744b51-linux-2.6-amd64.deb&ac=&wget=true&name=wget&platform=Linux&architecture=x86_64&version=7.0.3&product=splunk&typed=release'

dpkg -i splunk-7.0.3-fa31da744b51-linux-2.6-amd64.deb

/opt/splunk/bin/splunk start --answer-yes --no-prompt --accept-license

/opt/splunk/bin/splunk enable boot-start

/opt/splunk/bin/splunk stop

chown -R splunk:splunk /opt/splunk