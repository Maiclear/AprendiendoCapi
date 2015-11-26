set :stage, :production
set :rails_env, :production

server '52.33.73.197', user: 'ubuntu', roles: %w{web app db}, primary: true