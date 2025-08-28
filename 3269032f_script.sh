#!/bin/bash
apt-get update
puppet resource package git ensure=present
puppet resource package apache2 ensure=present
puppet resource service apache2 ensure=running
puppet resource file /operate/3269032f/ ensure=absent force=true
puppet resource file /operate/3269032f/ ensure=directory
cp -p /operate/3269032f/3269032f-op-repo/index-op-3269032f.html /var/www/html/index.html
