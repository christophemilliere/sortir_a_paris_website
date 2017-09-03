# config valid only for current version of Capistrano
lock "3.9.0"

set :application, 'nestor'
set :repo_url, 'git@github.com:christophemilliere/sortir_a_paris_website.git  '

# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, '/var/www/my_app_name'
set :deploy_to,  "/var/www/sortiraparis"

# Default value for :scm is :git
set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# set :linked_files, fetch(:linked_files, []).push('config/database.yml')

# Default value for linked_dirs is []
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/uploads')


# set :rbenv_type, :user # or :system, depends on your rbenv setup
# set :rbenv_ruby, '2.1.1'

# in case you want to set ruby version from the file:
# set :rbenv_ruby, File.read('.ruby-version').strip

# Default value for default_env is {}
# set :default_env, { path: "/.rbenv/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 5

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #
      # end
    end
    task :restart, :roles => :app, :except => { :no_release => true } do
      run "cd #{release_path} && touch tmp/restart.txt"
    end
  end
end
