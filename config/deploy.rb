set :application, "ht_km"
set :deploy_to, "/home/rails_apps/#{application}"
#############################################################
#	Settings
#############################################################
default_run_options[:pty] = true
set :use_sudo, false
#############################################################
#	Servers
#############################################################
set :user, "aaronm"
set :domain, "173.45.233.36"
server domain, :app, :web
role :db, domain, :primary => true
set :runner, "aaronm"
#############################################################
#	GIT
#############################################################
set :repository,  "git@github.com:aaronm/ht_km.git"
set :scm, "git"
set :scm_passphrase, "pastrami" #This is your custom github user password
ssh_options[:forward_agent] = true
set :branch, "master"



