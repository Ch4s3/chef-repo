# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "chase_gilliam"
client_key               "#{current_dir}/chase_gilliam.pem"
validation_client_name   "chasegilliamtest-validator"
validation_key           "#{current_dir}/chasegilliamtest-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/chasegilliamtest"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
