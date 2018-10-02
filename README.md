# Test Driven Redis

This repository follows the Test Drive Infrastructure approach discussed during
the Full Stack Toronto talk **Test Driven Infrastructure** and DevOpsDays
Toronto 2015 talk **Chef, Test Kitchen, ServerSpec, Docker, CI... Oh My!**.

Follow the [commit
stream](/amaltson/test-driven-redis/commits/master) to see the
Test Driven Infrastructure approach. We start with writing a failing
[ServerSpec](http://serverspec.org/), then writing the [Chef
recipe](http://learn.chef.io/) to make that tests pass. This example makes heavy
use of the [redisio supermarket
cookbook](https://supermarket.chef.io/cookbooks/redisio).

### Prerequisite

If you'd like to run the Test Kitchen tests locally, you'll need to install and
setup the following:

- [ChefDK](https://downloads.chef.io/chef-dk/)
- Configure ChefDK as your [primary development
  environment](https://github.com/chef/chef-dk#using-chefdk-as-your-primary-development-environment).
  - `gem install kitchen-docker`

  ### Usage

  With the prerequisites out of the way, you can start running the Test Kitchen
  tests with a `kitchen verify`. If you make changes to the Chef cookbook,
  you'll
  need to `kitchen converge` to apply the changes the Docker node. If you'd like
  to poke around the server, you can `kitchen login`.
