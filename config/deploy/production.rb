# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary server in each group
# is considered to be the first unless any hosts have the primary
# property set.  Don't declare `role :all`, it's a meta role.

# role :app, %w{vps124843.ovh.net}
# role :web, %w{vps124843.ovh.net}
# role :db,  %w{vps124843.ovh.net}

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server definition into the
# server list. The second argument is a, or duck-types, Hash and is
# used to set extended properties on the server.

server 'vps124843.ovh.net', user: 'webmaster', roles: %w{web app db}, ssh_options: {forward_agent: true}

set :stage, :production
set :branch, "master"

set :full_app_name, "nestor"
set :server_name, "ovh"

set :deploy_to,  "/var/www/sortiraparis"
set :rails_env, :production
# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult[net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start).
#
# Global options
# --------------
 # set :ssh_options, {
 #   keys: %w(/Users/devweb/.ssh/id_rsa),
 #   forward_agent: true,
	#  user: "webmaster",
	#  auth_methods: %w(publickey password)
 # }
#
# And/or per server (overrides global)
# ------------------------------------
# server 'example.com',
#   user: 'user_name',
#   roles: %w{web app},
#   ssh_options: {
#     user: 'user_name', # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: 'please use keys'
#   }
