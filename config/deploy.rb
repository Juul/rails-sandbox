set :application, "foo"
set :repository,  "git://github.com/BIOFAB/biofab-web.git"

set :scm, :git

set :deploy_to, "/var/rails/foo"

role :web, "biofab.jbei.org"                          # Your HTTP server, Apache/etc
role :app, "biofab.jbei.org"                          # This may be the same as your `Web` server
role :db,  "biofab.jbei.org", :primary => true        # This is where Rails migrations will run

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
