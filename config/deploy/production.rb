set :stage, :production
set :rails_env, :production
set :deploy_to, "/deploy/apps/mobile"
set :branch, :develop
server "54.218.215.134", user: 'mobile', roles: %w(web app db)