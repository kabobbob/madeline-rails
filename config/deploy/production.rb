load 'deploy' if respond_to?(:namespace) # cap2 differentiator

set :application, 'DataMigrator'
set :repository, 'git@github.com:dhselph/adm.git'
set :scm, 'git'
set :user, 'arty'
set :deploy_to, "/home/#{user}/#{application}"
set :deploy_via, :copy
set :use_sudo, false

role :app, '160.129.37.204'

after "deploy:update", "config:symlink", "config:bundle"

namespace :config do
  task :symlink do
    run "ln -sfn /home/#{user}/Artemis/shared/xapable #{release_path}/xapable"  
    run "ln -sfn #{shared_path}/config/source_db.yml #{release_path}/config/source_db.yml"
    run "ln -sfn #{shared_path}/config/destination_db.yml #{release_path}/config/destination_db.yml"  
  end
    
  task :bundle do 
    run "cd #{current_path} && bundle install --path #{shared_path}/bundle"
  end
end

namespace :deploy do
  task :finalize_update do
  end
  
  task :restart do  
  end 
end