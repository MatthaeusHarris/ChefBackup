#!/usr/bin/env ruby

require 'bundler/setup'
require 'chef'
require 'pp'

Chef::Config.from_file("/home/matt/git/uberchef/.chef/knife/rb")
rest = Chef::REST.new("http://10.42.0.3:4000")

nodes = rest.get_rest("/nodes");

pp nodes