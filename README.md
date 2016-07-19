https://wanna-join.herokuapp.com/

* Ruby 2.3.0, Rails 5

 ## System dependencies
- Postgres
- Redis

## Configuration
- Clone repo from git: git clone git@github.com:ann-ann/wann_join.git
- bundle install

## Database creation
bundle exec rake db:create db:migrate


## Heroku deploy:
git push heroku master


## Running test suite
bundle exec spec
