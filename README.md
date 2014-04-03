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

## Development Requirements
In order to develop and test this module, you will need a handful of gems installed.
* Rake - `gem install rake`
* Bundler - `gem install bundler`
* Travis - `gem install travis`
* Travis Lint - `gem install travis-lint`
* Berkshelf - `gem install berkshelf`
* test-kitchen - `gem install test-kitchen`
* foodcritic - `gem install foodcritic`

You will also need Vagrant 1.5.* installed.

## Integration testing
This project uses Test Kitchen to provide integration testing and Rake as a build utility. By default when you run rake
it will only check for style and lint issues. if you run `rake integration` it will perform the style and lint tasks and
if those pass it will then run kitchen test. The default integration tests will run against a local Vagrant Virtual Box.
If you wish to only run the tests against vagrant, you can run `rake integration:vagrant` or `rake integration:cloud` to
test against the ec2 cloud VM.

Travis CI will use the `rake travis` command to test style, lint and then integration:cloud.

Note, if you wish to fork this project or test any changes to this project using EC2, you will need to update environment
variables on your system so that test-kitchen can connect to EC2. You will also need to make sure you have your EC2 SSH
key available for your CLI commands to use.

You should have the following environment variables set:
* 'AWS_ACCESS_KEY_ID' - The AWS Access Key ID provided when you set up IAM
* 'AWS_SECRET_ACCESS_KEY' - The AWS Secret Access Key provided when you set up IAM
* 'AWS_USERNAME' - This should likely be 'ubuntu' if you're using a standard ubuntu AMI.
* 'EC2_SSH_KEY_PATH' - This should be the name of your key file, it is expected to live in ~/.ssh/

## Travis CI
This project uses Travis CI for build and CI.

The same environment variables above are already encrypted in the travis.yml file for the project using the
travis_ec2_encrypt shell script. The values in source control are for accessing the project owner's EC2 account. This
allows the Travis CI system to remotely spin up an EC2 instance and deploy the cookbook. If you wish to fork this repo,
then you will need to regenerate the encrypted values using the enclosed travis_ec2_encrypt script.

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
