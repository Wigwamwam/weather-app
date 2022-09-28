## Introduction
Welcome to an ever evolving postcode forecast app. How it works:
- Enter any valid UK postcode
- Enter two temperatures you consider 'hot' and 'cold'
The app will return a temperature forecast for that area according to your input, letting you know whether it will be hot or cold.

## Ruby versions
- Ruby '3.1.2'
- Rails '7.0.3'

## Initial Setup
- Pull the project from this public repository.
- Clone repo `gh repo clone Wigwamwam/weather-app`
- Enter repo `cd weather-app`
- Run `bundle install` in your terminal to install the necessary gems and dependencies.
- Run `rails db:create db:migrate` in your terminal to set up the database.

**NB:** You will need to plug in your own API key for the app to work; such a key can be obtained for free from [Weather API](https://www.weatherapi.com/) (see their documentation for more info).
The key should be stored in a .env file which itself should be listed within your .gitignore file so as to keep it private.

- Finally, run `rails server` and navigate to 'localhost:3000' in your web browser to start using the app!

## Next Steps
- Implement continuous integration
- Develop 5 day projections
- Develop hourly projections across the day
- Create a Slackbot Weather Channel that present different information based on the event listener.
