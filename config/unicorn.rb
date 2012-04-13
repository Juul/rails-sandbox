root = "/home/deployer/apps/rails-sandbox/current"
working_directory root
pid "#{root}/tmp/pids/unicorn.pid"
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"

listen "/tmp/unicorn.blog.sock"
timeout 30

worker_processes 10

# The preload stuff below is problematic because it is not simple
# to restart the master without loosing connections.
# see: http://unicorn.bogomips.org/SIGNALS.html
# so for now we are just sending HUP to restart workers
# and have no preloading

#preload_app true

#before_fork do |server, worker|
  # prevent master process from holding db connection
#  defined?(ActiveRecord::Base) and ActiveRecord::Base.connection.disconnect!
#end

#after_fork do |server, worker|
  # re-establish connection after forking
#  defined?(ActiveRecord::Base) and ActiveRecord::Base.establish_connection
#end
