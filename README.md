
## Versions Used in development process:

* Ruby - 2.5.3p105
* Rails - 5.2.3
* pg - '>= 0.18', '< 2.0'

## Steps to run the application.

1) bundle install
2) rake db:create
3) rake db:migrate

If you get any issues while downloading pdf (such as 'Bad wkhtmltopdf's path for wicked_pdf and wkhtmltopdf'), please run the following command.

### which wkhtmltopdf

This will give you path of your wkhtmltopdf. You should copy this path and paste in your config/intializers/wicked_pdf.rb And then restart your server.

