# chef-php-ppa
[![Build Status](https://secure.travis-ci.org/oakensoul/chef-php-ppa.png)](http://travis-ci.org/oakensoul/chef-php-ppa)

Chef Cookbook for adding an Ubuntu PPA ([Personal Package Archive](https://launchpad.net/ubuntu/+ppas)). This cookbook is built specifically for hooking into ondrej-php, but could likley be cloned for other purposes or other PPAs.

This cookbook is specifically for usage with Vagrant in developing the Cornerstone module and any modules built upon it.

## Requirements
This cookbook is built for use with Chef solo and Ubuntu.

## Configuration
The cookbook is already pre-configured for use with the default ondrej-php PPA. If you wish to use an alternate repository then you will need to set the key, uri and repository fields in your chef.json.

* chef-php-ppa["repository"] - ondrej-php
* chef-php-ppa["key"] - e.g. E5267A6C
* chef-php-ppa["uri"] - e.g. http://ppa.launchpad.net/ondrej/php5/ubuntu

## Contributing
* [Getting Started](doc/CONTRIBUTING.md)
* [Bug Reports](doc/CONTRIBUTING.md#bug-reports)
* [Feature Requests](doc/CONTRIBUTING.md#feature-requests)
* [Pull Requests](doc/CONTRIBUTING.md#pull-requests)

# LICENSE
This module is licensed using the BSD 2-Clause License:

```
Copyright (c) 2013 Robert Gunnar Johnson Jr.
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

- Redistributions of source code must retain the above copyright notice, this
  list of conditions and the following disclaimer.
- Redistributions in binary form must reproduce the above copyright notice,
  this list of conditions and the following disclaimer in the documentation
  and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
```