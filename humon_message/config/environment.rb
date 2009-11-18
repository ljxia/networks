# Be sure to restart your server when you modify this file
#ENV['GEM_PATH'] = '/home/lilidada/ruby/gems:/usr/lib/ruby/gems/1.8'

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.4' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.gem 'twitter', :version => '0.6.15'  
  config.time_zone = 'UTC'
end

ConsumerConfig = YAML.load(File.read(Rails.root + 'config/' + 'consumer.yml'))