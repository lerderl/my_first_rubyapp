# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## INTRO TO RAILS VIEWS

Command to generate a controller with its conrresponding view: 

1. rails generate controller Hello index
2. rails generate controller Posts make print

Command to generate a controller with its corresponding view without actually making changes to the application: rails generate controller Goodbye index --pretend, rails generate controller Posts make print --pretend

## INTRO TO RAILS MODELS

Command to generate the database model: rails generate model Post

Then run rails db:migrate to complete the process

Code block to get all posts is: <%= Post.all.length %>
