Sweater Weather

About: 
Sweater Weather is a back-end Rails project that explores how a back-end web developer would consume/create APIs to be given to a theoretical front-end dev. The basic project description and learning goals can be seen below. 

![Screen Shot 2021-06-15 at 10 50 12 PM](https://user-images.githubusercontent.com/74991865/122160240-d2799b80-ce2c-11eb-8ca3-a7004e47b9e1.png)

Programs Used and Versions: 
  - Ruby version - 2.5.3
  - Rails version - 5.2.6
  - RSpec version - 3.10

Set-up Instructions:
 Download Locally: 
  (Within Terminal)
   - git clone https://github.com/Wyattwicks/sweater_weather
   - cd sweater_weather
   - bundle install
   - bundle exec install figaro
    - request api keys from the external services seen under External APIs below
    
   - rails db:create
   - rails db:migrate
   - rails s 
  
 Testing:
  Full tests can be run with 'bundle exec rspec' in terminal
  Individual test files can be run with 'bundle exec rspec <file_name>
  
Endpoint Requests and Responses: 


External APIs used
  http://www.mapquestapi.com/geocoding/v1/address
  http://www.mapquestapi.com/directions/v2/route
  https://api.openweathermap.org/data/2.5/onecall
  https://api.unsplash.com/search/photos
