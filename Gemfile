# frozen_string_literal: true

source 'https://rubygems.org'

gem 'faraday', '>= 0.17.3'
gem 'kitchen-docker', '>= 2.9'
gem 'kitchen-inspec', '>= 1.1'
gem 'kitchen-vagrant', '>= 1.6'
gem 'kitchen-ec2', '>= 3.4'
gem 'kitchen-google', '>= 2.0'

# Latest versions of `train` cause failure when running `kitchen verify`
# Downgrading to `3.2.0` until this is fixed upstream
# https://github.com/inspec/train/pull/544#issuecomment-566055052
gem 'train', '3.2.0'
