# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'
require "rubygems"
require 'motion-cocoapods'
require 'bundler'
Bundler.require
require 'motion-prime'

require File.expand_path 'app/environment.rb'
Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.deployment_target = '7.0'
  app.name = 'Picker Demo'

  app.version = '0.0.1'
  app.icons = %w{Icon.png}
end
