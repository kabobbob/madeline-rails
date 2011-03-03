load 'deploy' if respond_to?(:namespace) # cap2 differentiator

set :application, 'Madeline'
set :repository, 'git@github.com:kabobbob/madeline-rails.git'
set :scm, 'git'
set :user, 'arty'
set :deploy_to, "/home/#{user}/#{application}"
set :deploy_via, :copy
set :use_sudo, false

role :app, '160.129.37.203'

after "deploy:update", "build:configure", "build:make"

namespace :build do
  task :configure do
    run "cd #{current_path} && ./configure"
  end

  task :make do
    run "cd #{current_path} && make"
  end
end

namespace :deploy do
  task :finalize_update do
  end

  task :restart do
  end
end
