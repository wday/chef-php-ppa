name              "chef-php-ppa"
maintainer        "Robert Gunnar Johnson Jr."
maintainer_email  "github@oakensoul.com"
license           "GPL v2 - All rights reserved"
description       "Chef Cookbook for setting up a PHP web server using a PPA."
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
supports          "ubuntu"
version          "1.0.0"

depends "apt"