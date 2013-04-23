# knife.rb
current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "tom1223"
client_key               "#{current_dir}/tom1223.pem"
validation_client_name   "cdo-validator"
validation_key           "#{current_dir}/cdo-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/cdo"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
# defaults
knife[:identity_file] 	      = "~/.ssh/citrus22key.pem"
# knife[:aws_ssh_key_id]        = "citrus22key"
knife[:aws_ssh_key_id] = "#{ENV['AWS_KEY_ID']}"
knife[:aws_access_key_id] = "#{ENV['AWS_ACCESS_KEY_ID']}"
knife[:aws_secret_access_key] = "#{ENV['AWS_SECRET_ACCESS_KEY']}"
knife[:region]                = "us-west-2"
# knife[:availability_zone]     = "us-west-2b"
# knife[:flavor]                = "m1.medium"
knife[:flavor]                = "m1.small"
# knife[:flavor]                = "t1.micro"

# Ubuntu 12.04 LTS 64bit:
# knife[:image]                 = "ami-4ac9437a"
# knife[:use_sudo]              = "true"
# knife[:ssh_user]              = "ubuntu"

# Ubuntu 12.04 LTS 32bit:
knife[:image]                 = "ami-48c94378"
knife[:use_sudo]              = "true"
knife[:ssh_user]              = "ubuntu"
