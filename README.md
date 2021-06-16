# Sweater Weather

## About: 
Sweater Weather is a back-end Rails project that explores how a back-end web developer would consume/create APIs to be given to a theoretical front-end dev. The basic project description and learning goals can be seen below. 

![Screen Shot 2021-06-15 at 10 50 12 PM](https://user-images.githubusercontent.com/74991865/122160240-d2799b80-ce2c-11eb-8ca3-a7004e47b9e1.png)

## Programs Used and Versions: 
  - Ruby version - 2.5.3
  - Rails version - 5.2.6
  - RSpec version - 3.10

## Set-up Instructions:
### Download Locally: 
  (Within Terminal)
   - git clone https://github.com/Wyattwicks/sweater_weather
   - cd sweater_weather
   - bundle install
   - bundle exec install figaro
    - request api keys from the external services seen under External APIs below
    
   - rails db:create
   - rails db:migrate
   - rails s 
   - run Postman (https://www.postman.com/)
 - Add requests using format defined in Endpoint Requests and Responses below.
 - Note: requests use JSON body format. In Postman, under the address bar, click on “Body”, select “raw”, which will show a dropdown that says “Text” in it, choose “JSON” from the list.
 
### Heroku:
 - https://wyatt-sweater-weather.herokuapp.com/
 - run Postman (https://www.postman.com/)
 - Add requests using format defined in Endpoint Requests and Responses below.
 - Note: requests use JSON body format. In Postman, under the address bar, click on “Body”, select “raw”, which will show a dropdown that says “Text” in it, choose “JSON” from the list.
  
 ## Testing:
  - Full tests can be run with 'bundle exec rspec' in terminal
  - Individual test files can be run with 'bundle exec rspec <file_name>
  - Testing includes sad path / error handling
  
## Endpoint Requests and Responses: 
  - request (forecast for location): ![Screen Shot 2021-06-15 at 11 07 36 PM](https://user-images.githubusercontent.com/74991865/122161199-87608800-ce2e-11eb-8980-be84fb75a04c.png)
  - response: ![Screen Shot 2021-06-15 at 11 08 34 PM](https://user-images.githubusercontent.com/74991865/122161260-a101cf80-ce2e-11eb-8a6d-57866038bcc2.png)
  - request (picture for location): ![Screen Shot 2021-06-15 at 11 13 35 PM](https://user-images.githubusercontent.com/74991865/122161670-56348780-ce2f-11eb-9086-d5e67e3fe2c0.png)
  - response: ![Screen Shot 2021-06-15 at 11 10 28 PM](https://user-images.githubusercontent.com/74991865/122161424-ec1be280-ce2e-11eb-93b1-0ebf833447b8.png)
  - request (user registration): ![Screen Shot 2021-06-15 at 11 14 16 PM](https://user-images.githubusercontent.com/74991865/122161751-7d8b5480-ce2f-11eb-95a6-df98dbc517d8.png)
  - response: ![Screen Shot 2021-06-15 at 11 15 21 PM](https://user-images.githubusercontent.com/74991865/122161792-93991500-ce2f-11eb-92cf-afde00cc4f67.png)
  - request (user login): ![Screen Shot 2021-06-15 at 11 16 47 PM](https://user-images.githubusercontent.com/74991865/122161896-cf33df00-ce2f-11eb-99f0-922ef9584661.png)
  - response: ![Screen Shot 2021-06-15 at 11 17 38 PM](https://user-images.githubusercontent.com/74991865/122161950-e672cc80-ce2f-11eb-8157-11fd3f243d69.png)
  - request (road-trip): ![Screen Shot 2021-06-15 at 11 18 19 PM](https://user-images.githubusercontent.com/74991865/122161993-00141400-ce30-11eb-9241-30ad051c6d1c.png)
  - response ![Screen Shot 2021-06-15 at 11 18 50 PM](https://user-images.githubusercontent.com/74991865/122162057-15893e00-ce30-11eb-9f0e-ee84bc8116f7.png)











## Author:
* Wyatt Wicks [GitHub](https://github.com/Wyattwicks) | [LinkedIn](https://www.linkedin.com/in/wyattwicks/)


## External APIs used
  - http://www.mapquestapi.com/geocoding/v1/address
  - http://www.mapquestapi.com/directions/v2/route
  - https://api.openweathermap.org/data/2.5/onecall
  - https://api.unsplash.com/search/photos
