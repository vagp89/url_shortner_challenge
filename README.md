# README
APP SHORTSTER CHALLENGE

Prerequisites
The setups steps expect following tools installed on the system.

Git
Ruby 2.6.6
Rails 6.0.3.4

1. Check out the repository

  1. `git clone git@github.com:vagp89/url_shortner_challenge.git`


Run the following commands to create and setup the database.

  1. `bundle install`
  2. `yarn`
  3. first run migrations: `rake db:migrate`


2. Start the Rails server

You can start the rails server using the command given below.

3. `bundle exec rails s`

4. And now you can visit the site with the URL `http://localhost:3000/urls`

Notes:
1. I assumed that it was not necessary to create a table for users since there is no requirement to show who created the link
2. I've created a single db table "Urls" which stores the link, generated code, count visit and the creation and last access timestamps.
