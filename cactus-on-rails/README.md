# CACTUS ON RAILS

The only cactus and succulent database you'll ever need.

Installation and deployment notes:

* Ruby 2.2 required, MySqlite3 required, built in Rails 5

* Ruby / Rails installation - on windows use the Ruby Installer / Rails installer (will install git and mysqlite3 if required)
* then gem install bundler
* then gem install rails

* System dependencies - developed for windows
* run bundle install
* NodeJs required - use the NodeJs installer and restart machine

* Database creation - run ruby bin/rails db:schema:load or ruby bin/rails db:migrate 

* Assets precompile - may be required to do rake assets:precompile for datatables images

* Deployment instructions - on windows, run ruby bin/rails server and access at localhost:3000

