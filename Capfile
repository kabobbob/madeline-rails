load 'deploy' if respond_to?(:namespace) # cap2 differentiator

set :stages, %w(staging production dev)
set :default_stage, "dev"
require 'capistrano/ext/multistage'