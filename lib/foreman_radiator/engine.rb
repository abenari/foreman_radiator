require 'foreman_radiator'

module ForemanRadiator
  class Engine < ::Rails::Engine
    initializer 'foreman_radiator.register_plugin', :after=> :finisher_hook do |app|
      Foreman::Plugin.register :foreman_radiator do
      end if defined? Foreman::Plugin
    end
  end
end
