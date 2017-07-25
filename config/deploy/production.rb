set :port, 22
set :user, 'rails'
set :deploy_via, :remote_cache
set :use_sudo, true

server '162.243.72.220',
  roles: [:web, :app, :db],
  port: fetch(:port),
  user: fetch(:user),
  primary: true

set :deploy_to, "/home/#{fetch(:user)}/apps/#{fetch(:application)}"

set :ssh_options, {
  forward_agent: true,
  auth_methods: %w(publickey),
  user: 'deployer',
}

set :rails_env, "production"
set :puma_env, "production"
set :puma_config_file, "/home/rails/apps/pompeii/current/config/puma.rb"
set :puma_conf, "/home/rails/apps/pompeii/current/config/puma.rb"