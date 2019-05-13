# README

#This README would normally document whatever steps are necessary to get the
#application up and running.

#Things you may want to cover:

#* Ruby version

#* System dependencies

#* Configuration

#* Database creation

#* Database initialization

#* How to run the test suite

#* Services (job queues, cache servers, search engines, etc.)

#* Deployment instructions

#* ...

Versions Used in development process:

Ruby - 2.5.3p105
Rails - 5.2.3
pg - '>= 0.18', '< 2.0'

Steps to run the application.

1) bundle install
2) rake db:create
3) rake db:migrate

If you get any issues while downloading pdf (such as 'Bad wkhtmltopdf's path for wicked_pdf and wkhtmltopdf'), please run the following command.

which wkhtmltopdf

This will give you path of your wkhtmltopdf. You should copy this path and paste in your config/intializers/wicked_pdf.rb And then restart your server.

