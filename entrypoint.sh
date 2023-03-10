#!/bin/sh

set -e

# install missing gems
bundle check || bundle install --jobs 20 --retry 5

# run passed commands
bundle exec ${@}
