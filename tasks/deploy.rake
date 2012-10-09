
namespace :demo do
  desc "Deploy to the staging server"
  task :deploy do
    sh "rm -Rf _site"
    sh "jekyll --url http://demo.avh4.net/bsa"
    sh "rsync -va --delete _site/ yoshi:demo.avh4.net/bsa/"
  end
end

namespace :prod do
  desc "Deploy to the production server"
  task :deploy do
    sh "rm -Rf _site"
    sh "jekyll --url http://buildsomethingawesome.org"
    sh "rsync -va --delete _site/ yoshi:buildsomethingawesome.org/"
  end
end
