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

 ### Postman Link
 [![Run in Postman](https://run.pstmn.io/button.svg)](https://app.getpostman.com/run-collection/15721777-61b82803-8a03-45ec-b998-5f735bcb3f57?action=collection%2Ffork&collection-url=entityId%3D15721777-61b82803-8a03-45ec-b998-5f735bcb3f57%26entityType%3Dcollection%26workspaceId%3D3d084559-ed5b-43a5-981c-35220453a7d7)
 
 ### Docker Image
 https://hub.docker.com/r/yitwix/sweater_weather_web
  
 ## Testing:
  - Full tests can be run with 'bundle exec rspec' in terminal
  - Individual test files can be run with 'bundle exec rspec <file_name>
  - Testing includes sad path / error handling
  
## Endpoint Requests and Responses: 
### Weather Forecast for Location
  - request: ![Screen Shot 2021-06-15 at 11 07 36 PM](https://user-images.githubusercontent.com/74991865/122161199-87608800-ce2e-11eb-8980-be84fb75a04c.png)
  - example response: ![Screen Shot 2021-06-16 at 8 41 53 AM](https://user-images.githubusercontent.com/74991865/122240096-ba326c80-ce7e-11eb-8be3-89021869d99c.png)
### Background Image for Location
  - request (picture for location): ![Screen Shot 2021-06-15 at 11 13 35 PM](https://user-images.githubusercontent.com/74991865/122161670-56348780-ce2f-11eb-9086-d5e67e3fe2c0.png)
  - example response: ![Screen Shot 2021-06-16 at 8 43 03 AM](https://user-images.githubusercontent.com/74991865/122240290-e3eb9380-ce7e-11eb-944f-0bcd56877642.png)
### Registering a User
  - request: ![Screen Shot 2021-06-15 at 11 14 16 PM](https://user-images.githubusercontent.com/74991865/122161751-7d8b5480-ce2f-11eb-95a6-df98dbc517d8.png)
  - example response: ![Screen Shot 2021-06-16 at 8 45 45 AM](https://user-images.githubusercontent.com/74991865/122240843-4f356580-ce7f-11eb-8296-d1c028466841.png)
### User Login
  - request: ![Screen Shot 2021-06-15 at 11 16 47 PM](https://user-images.githubusercontent.com/74991865/122161896-cf33df00-ce2f-11eb-99f0-922ef9584661.png)
  - example response: ![Screen Shot 2021-06-16 at 8 51 07 AM](https://user-images.githubusercontent.com/74991865/122241746-07630e00-ce80-11eb-9e9a-d57b14bed8cd.png)
### Route for Given Origin and Endpoint with Weather for Endpoint at ETA
  - request (road-trip): ![Screen Shot 2021-06-15 at 11 18 19 PM](https://user-images.githubusercontent.com/74991865/122161993-00141400-ce30-11eb-9241-30ad051c6d1c.png)
  - example response: ![Screen Shot 2021-06-16 at 8 59 29 AM](https://user-images.githubusercontent.com/74991865/122243253-35951d80-ce81-11eb-9441-18767386aabc.png)

## Author:
* Wyatt Wicks [GitHub](https://github.com/Wyattwicks) | [LinkedIn](https://www.linkedin.com/in/wyattwicks/) | [Dockerhub](https://hub.docker.com/u/yitwix)


## External APIs used
  - http://www.mapquestapi.com/geocoding/v1/address
  - http://www.mapquestapi.com/directions/v2/route
  - https://api.openweathermap.org/data/2.5/onecall
  - https://api.unsplash.com/search/photos
