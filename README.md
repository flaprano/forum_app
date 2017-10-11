Project developed using  
- Ruby 2.4.2  
- Rails 5.1.4  
- Passenger Web app Server  
- MongoDB database on mLab  
  
Obs.: The focus of the project was the back-end. The front-end was not developed.  
  
Gems used on this project:  
  
capybara (to test the project)  
factory_girl_rails (to support a better creation of objects on the tests)  
rspec-rails (to test the project)  
simplecov (to verify the percentage of test cover of the project)  
rubocop (to verify the quality of the code)  
passenger (to run the project on a passenger web app server)  
mongoid (to use a MongoDB database)  
kaminari-actionview and kaminari-mongoid (to paginate results with a MongoDB database)  
glebtv-mongoid_nested_set (to set models as nested trees on MongoDB)  
  
How to run:  
- Clone the project  
- Checkout branch master  
- Run the command: bundle install  
- Project is ready to run with passenger start  
  
or ...  
  
Open on: https://felipe-forum-app.herokuapp.com/