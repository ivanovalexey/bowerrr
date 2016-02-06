namespace :deploy do

  desc 'Deploy to Heroku'
  task to_heroku: :environment do
    app = ENV['app']
    remote = ENV['remote']
    branch = ENV['branch'] || 'master'

    if app.blank? || remote.blank?
      fail 'Error: You should pass "app" and "remote" params ("branch" optionally, default is "master") to run this task!'
    end

    system "git push -f #{remote} #{branch}:master"
    Bundler.with_clean_env do
      system "heroku pg:reset DATABASE --confirm #{app}"
      system "heroku run rake db:migrate --app #{app}"
      system "heroku run rake db:seed --app #{app}"
    end
  end

end
